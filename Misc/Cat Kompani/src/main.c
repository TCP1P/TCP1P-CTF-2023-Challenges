#define _GNU_SOURCE 1

#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include <time.h>
#include <errno.h>
#include <assert.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/socket.h>
#include <sys/wait.h>
#include <sys/mman.h>
#include <sys/sendfile.h>


void enc(char* path){
    for (int i = 1; i < strlen(path); i++){
        if (rand() % i == 1){
            path[i] = path[i] + (rand() % 10);
        }
    }
}

int main(int argc, char** argv){
    
    setvbuf(stdin, NULL, _IONBF, 0);
    setvbuf(stdout, NULL, _IONBF, 1);

    struct stat file_info;

    if (argc != 2) {
        printf("cat: No file or directory specified\n");
        return 1;
    } 
    char jail_path[] = "/tmp/jail-XXXXXX";
    assert(mkdtemp(jail_path) != NULL);
    assert(chroot(jail_path) == 0);

    int fffd = open("/flag", O_WRONLY | O_CREAT);
    write(fffd, "TCP1P{u're_right_The_blockl1st_ar3_Us3less_but_did_u_EvEr_consider_this_As_4_FAKE_FLAG???}", 90);
    close(fffd);

    char path[100];
    strcpy(path, argv[1]);

    if (strstr(argv[1], "..") != NULL){
        enc(path);
    } 

    int fd = open(path, 0);

    if (fd < 0){
        printf("cat: %s: No such file or directory.\n", argv[1]);
    } else if (fstat(fd, &file_info) == -1){
        printf("cat: Cannot retrieve information\n");
    } else if (S_ISDIR(file_info.st_mode)){
        printf("cat: %s: Is a directory\n", argv[1]);
    } else {
        sendfile(1, fd, 0, 128);
    }

    close(fd);
    return 0;
}