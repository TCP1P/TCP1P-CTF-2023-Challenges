#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <time.h>

int keys[40] = {};
int indKeys = 0;

void secretFunction(){
    puts(" __   __  _______  _______  ___   _  _______  ______    __   __  _______  __    _  ____   _______  ____   _______ ");
    sleep(1);
    puts("|  | |  ||   _   ||       ||   | | ||       ||    _ |  |  |_|  ||   _   ||  |  | ||    | |  _    ||    | |       |");
    sleep(1);
    puts("|  |_|  ||  |_|  ||       ||   |_| ||    ___||   | ||  |       ||  |_|  ||   |_| | |   | | | |   | |   | |___    |");
    sleep(1);
    puts("|       ||       ||       ||      _||   |___ |   |_||_ |       ||       ||       | |   | | |_|   | |   |     |   |");
    sleep(1);
    puts("|       ||       ||      _||     |_ |    ___||    __  ||       ||       ||  _    | |   | |___    | |   |     |   |");
    sleep(1);
    puts("|   _   ||   _   ||     |_ |    _  ||   |___ |   |  | || ||_|| ||   _   || | |   | |   |     |   | |   |     |   |");
    sleep(1);
    puts("|__| |__||__| |__||_______||___| |_||_______||___|  |_||_|   |_||__| |__||_|  |__| |___|     |___| |___|     |___|");
    sleep(3);
    puts("");
    puts("===========================");
    srand(time(0));
    for(int i = 0;i<100;i+=20){
        printf("Loading %d%\n", (i + rand()%(i+19 - i)));
        sleep(1);
    }
    printf("Program Complete.\n");
    sleep(2);
    printf("no flag for you :(\n");
    sleep(2);
    printf("bye.\n");
}

int phase1(){
    int x = 0;
    char boz[] = "TCPIP{FAKEflag}";
    for(int i = 0;i<strlen(boz);i++){
        x = ((x+boz[i])%52);
    }
    // printf("%d", x);
    keys[indKeys++] = x;
    return x;
}

int phase2(){
    int x = 33;
    char dez[] = "TCPIP{HiYAA_FAKE}";
    for(int i = 0;i<strlen(dez);i+=2){
        x = (x+dez[i])%100;
    }
    // printf("%d", x);
    keys[indKeys++] = x;
    return x;
}

int phase3(){
    char taz[] = "TCPIP{stillFAKEE}";
    int x= 23;
    for(int i = 0;i<strlen(taz);i++){
        if(i%3==0){
            x = (x+ taz[i]^2)%101;
        }
    }
    // printf("%d", x);
    keys[indKeys++] = x;
    return x+1;
}

int phase4(){
    char laz[] = "TCPIP{FAke...}";
    int x = ((phase2()+phase1())/phase2());
    // printf("%d\n", x);
    keys[indKeys++] = x;
    return x;
}

int phase5(){
    int x = 0;
    char kez[]="TCPIP{ohofcourseedisFAKE}";
    for(int i = 12;i>3;i--){
        x = (x+ kez[i]-i)%80;
    }
    keys[indKeys++] = x;
    return x;
}

int phase6(){
    int x = 0;
    char riz[] = "TCPIP{donottSubmitDisFAKEE}";
    for(int i = 12;i>3;i--){
        x = (x+ riz[i]^i)%133;
    }
    keys[indKeys++] = x;
    return x;
}

int phase7(){
    char riz[] = "TCPIP{disalsoFAKE}";
    int x = 1;
    x+=riz[8];
    keys[indKeys++] = x;
    return x;
}

int phase8(){
    char bez[] = "TCPIP{FakeisdefinitelyFAKE}";
    int x = 122;
    keys[indKeys++] = x^bez[2]^bez[3]^bez[6];
    return x;
}

int phase9(){
    char luz[] = "}eeekaF{PIPCT";
    int i = 0;
    int x = 13;
    while(i<strlen(luz)){
        int d = luz[i];
        x+=d^2;
        i+=3; 
    }
    keys[indKeys++] = (x%90)+33;
    return x;
}

int phase10(){
    int x = phase4()+phase6()-20;
    keys[indKeys++] = x;
    return x;
}

int phase11(){
    int x = 12;
    while(x<61){
        x+=28;
    }
    keys[indKeys++] = x;
    return x;
}

int phase12(){
    char koz[] = "TCPIP{disFAKEEE}";
    int x = 1810;
    for(int i = 0;i<strlen(koz);i++){
        x -=koz[i]+i;
    }
    keys[indKeys++] = x;
    return x;
}

int phase13(){
    int x =phase2()+phase8()-phase2()+phase5() - phase4()+118;
    keys[indKeys++] = x;
    return x;
}

int phase14(){
    char haz[] = "TCPIP{IsthissssFAKE?OfcourseE!}";
    int x = 0;
    for(int i = 0;i<strlen(haz);i++){
        x+=haz[i] - 90;
    }
    keys[indKeys++] = x;
    return x;
}
void printFlag(){
    int secretCode[40] = {65, 10, 76, 120, 69, 50, 105, 99, 71, 17, 122, 90, 48, 74, 39, 116, 88, 64, 33, 307, 22, 86, 38, 89, 42, 116, 37, 109, 170, 12, 82, 22, 300, 40, 76, 22, 64, 57};
    phase1();
    phase2();
    phase3();
    phase4();
    phase5();
    phase6();
    phase7();
    phase8();
    phase9();
    phase10();
    phase11();  
    phase12();
    phase13();
    phase14();
    phase9();
    phase2();
    phase12();
    phase2();
    phase6();
    phase7();
    phase8();
    phase11();
    for(int i = 0;i<38;i++){
        printf("%c", secretCode[i]^keys[i]);
    }
    puts("");
}

int main(){
    printf("=====FLAG-GENERATOR-INATOR-3000=====\n");
    sleep(2);
    secretFunction();
    sleep(2);

    return 0;   
}