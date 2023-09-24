// gcc -no-pie -o chall chall.c 
#include <stdio.h>
#include <stdlib.h>

void setup(){
	setvbuf(stdin, NULL, _IONBF, 0);
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
}

void gadget(){
    __asm__(
        "xchg %rdi, %rbp\n\t"
        "ret"
    );
}

void win(int key){
    if(key != 0x1945) return;

    system("/bin/cat flag.txt");
}

void main(){
    char buff[0x20];

    setup();

    puts("the stage is yours");
    printf(">> ");
    fgets(buff, 0x40, stdin);
}