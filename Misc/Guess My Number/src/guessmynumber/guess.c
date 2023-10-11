#include <stdio.h>
#include <stdlib.h>

int key;

void flag_handler(){
    FILE *f = fopen("flag.txt","r");
    if (f == NULL) {
        printf("Cannot find flag.txt!");
        exit(0);
    }
}

void banner() {
    printf("=======              WELCOME TO GUESSING GAME               =======\n");
    printf("======= IF YOU CAN GUESS MY NUMBER, I'LL GIVE YOU THE FLAG  =======\n\n");
}

void vuln(){
    int random;
    key = 0;
    srand(1337);
    random = rand();    
    printf("Your Guess : ");
    fflush(stdout);
    scanf("%d", &key);
    if ((key ^ random + 1337331) == 0xcafebabe){
        printf("Correct! This is your flag :\n");
        system("cat flag.txt");
        exit(EXIT_SUCCESS);
    } else {
        printf("Wrong, Try again harder!\n");
    }
}

int main() {
    flag_handler();
    banner();
    vuln();
}


