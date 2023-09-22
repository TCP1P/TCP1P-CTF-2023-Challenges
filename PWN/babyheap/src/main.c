#include <stdio.h>
#include <stdlib.h>

long *user_chunk[10];
long *flag_chunk;

void setup(){
	setvbuf(stdin, NULL, _IONBF, 0);
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
}

void create(){
    char buff[0x20];
    int idx, size;

    printf("Index: ");
    fgets(buff, 0x20, stdin);
    idx = atoi(buff);

    if(idx < 1 || idx > 10){
        puts("[!] sorry can't do that");
        return; 
    }

    if(user_chunk[idx - 1] != NULL){
        puts("[!] oops, chunk already occupied");
        return;
    }

    printf("Size: ");
    fgets(buff, 0x20, stdin);
    size = atoi(buff);

    if(size < 0x10 || size > 0x100){
        puts("[!] sorry can't do that");
        return;
    }

    user_chunk[idx - 1] = malloc(size);
    printf("Content: ");
    fgets(user_chunk[idx - 1], size, stdin);
    puts("[*] creation success");
}

void delete(){
    char buff[0x20];
    int idx;

    printf("Index: ");
    fgets(buff, 0x20, stdin);
    idx = atoi(buff);

    if(idx < 1 || idx > 10){
        puts("[!] sorry can't do that");
        return; 
    }

    free(user_chunk[idx - 1]);
    puts("[*] deletion success");
}

void view(){
    char buff[0x20];
    int idx;

    printf("Index: ");
    fgets(buff, 0x20, stdin);
    idx = atoi(buff);

    if(idx < 1 || idx > 10){
        puts("[!] sorry can't do that");
        return; 
    }

    if(user_chunk[idx - 1] == NULL){
        puts("[!] chunk is empty");
        return;
    }

    printf("[*] Data: %s\n", user_chunk[idx - 1]);
}

void read_flag(){
    FILE *f;

    f = fopen("flag.txt", "r");
    if(f == NULL){
        puts("[!] flag.txt not found");
        puts("[!] if this happened on the remote server, please contact admin.");
        return;
    }

    for(int i = 0; i < 4; i++){
        malloc(0x40);
    }

    flag_chunk = malloc(0x40);
    fgets(flag_chunk, 0x40, f);
    fclose(f);
    puts("[*] flag loaded into memory");
}

int menu(){
    char buff[0x20];
    int choice;

    puts("Menu:");
    puts("(1) create [1-10]");
    puts("(2) delete [1-10]");
    puts("(3) view   [1-10]");
    puts("(4) flag");
    puts("(5) exit");
    printf("> ");

    fgets(buff, 0x20, stdin);
    choice = atoi(buff);
    return choice;    
}

void main(){
    int choice;

    while(1){
        choice = menu();
        switch(choice){
            case 1:
                create();
                break;
            case 2:
                delete();
                break;
            case 3:
                view();
                break;
            case 4:
                read_flag();
                break;
            case 5:
                puts("[*] exiting...");
                exit(0);
                break;
            default:
                puts("[!] unknown choice");
        } 
    }
}