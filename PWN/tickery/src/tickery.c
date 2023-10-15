#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
#include <seccomp.h>

char* TICKET[16];
const size_t MALLOC_SIZE = 0x20;
const char* prompt = "Seat Number : ";

void init(){
    setvbuf(stdin, NULL, _IONBF, 0);
    setvbuf(stdout, NULL, _IONBF, 0);
    setvbuf(stderr, NULL, _IONBF, 0);
}

void seccomp_rules(){
    scmp_filter_ctx ctx;
    ctx = seccomp_init(SCMP_ACT_KILL);
    seccomp_rule_add(ctx, SCMP_ACT_ALLOW, SCMP_SYS(open), 0);
    seccomp_rule_add(ctx, SCMP_ACT_ALLOW, SCMP_SYS(read), 0);
    seccomp_rule_add(ctx, SCMP_ACT_ALLOW, SCMP_SYS(write), 0);
    seccomp_rule_add(ctx, SCMP_ACT_ALLOW, SCMP_SYS(exit), 0);
    seccomp_load(ctx);
}

void menu(){
    printf("1. Order\n");
    printf("2. Verify\n");
    printf("3. Refund\n");
}

unsigned long ticketid(const char* prompt) {
  unsigned long idx;
  printf("%s", prompt);
  scanf("%lu%*c", &idx);
  if (idx < 0 || idx >= 16) {
    _exit(-1);
  }
  return idx;
}

void order(unsigned long idx){
    TICKET[idx] = malloc(MALLOC_SIZE);
    printf("Name : ");
    read(STDIN_FILENO, TICKET[idx], MALLOC_SIZE);
}

unsigned long long int sub_14010(char *str) {
    unsigned long long int result = 0;

    for (size_t i = 0; i < strlen(str); ++i) {
        result = result * 256 + (unsigned char)str[i];
    }

    return result;
}

void sub_1420(unsigned long long int num, char *str, size_t len) {
    for (size_t i = 0; i < len; ++i) {
        str[i] = num & 0xFF;
        num >>= 8;
    }
}

void sub_1450(char *str) {
    size_t length = strlen(str);
    unsigned long long int m, key, idx;

    for (size_t i = 0; i < length; i++) {
        str[i] ^= rand() & 0xFF;
    }
    m = sub_14010(str);
    length = rand() % length;
    for (size_t i = 0; i < length; i++) {
        m = m ^ (m >> 1);
    }

    length = strlen(str);
    sub_1420(m, str, length);
}

void verify(unsigned long idx){
    char confirmation[MALLOC_SIZE];
    
    if (TICKET[idx] == NULL){
        printf("This seat is available, you are free to order this one\n");
    } else {
        printf("Please Confirm !\n");
        printf("Your seat %lu\n", idx);
        printf("please say your name for confirmation : ");
        read(STDIN_FILENO, confirmation, MALLOC_SIZE);
        sub_1450(confirmation);
        if (strcmp(TICKET[idx], confirmation) == 0){
            printf("This ticket has been verified, for your own safety please change the ticket name\n");
            printf("New name : ");
            read(STDIN_FILENO, TICKET[idx], MALLOC_SIZE);
        } else {
            printf("Sorry sir this ticket belongs to %s", TICKET[idx]);
            TICKET[idx] = NULL;
        }
    }
}

void refund(unsigned long idx){
    if (TICKET[idx] == NULL){
        printf("This seat is available, you are free to order this one\n");
    } else {
        free(TICKET[idx]);
        printf("ok\n");
    }
}

int main(int argc, char** argv){

    int input;
    unsigned long idx;

    init();
    seccomp_rules();
    printf("ticket??\n");
    while(1){
        menu();
        printf("> ");
        scanf("%d%*c", &input);
        
        switch (input){
            case 1:
                idx = ticketid(prompt);
                order(idx);
                break;
            case 2:
                idx = ticketid(prompt);
                verify(idx);
                break;
            case 3:
                idx = ticketid(prompt);
                refund(idx);
                break;
            default:
                puts("nono\n");
                _exit(0);
        }
    }
}

// gcc spirit.c -o spirit -lseccomp