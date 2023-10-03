#include <stdlib.h>
#include <stdio.h>

const unsigned long long fl1g[28] =  {2265943262, 1345230320, 458297133, 2326540009, 2455509799, 1138974610, 2435837030, 2326540009, 1493572836, 1193763933, 1796386956, 769388513, 1307346274, 1688574126, 881572269, 2265943262, 2719325259, 1138974610, 1541433598, 1193763933, 345202070, 760991011, 1138974610, 2719325259, 1138974610, 1073352258, 1138974610, 2119413954};
const unsigned long long fl2g[28] =  {722496910, 972501641, 2804471103, 1138974610, 2580303913, 1512720281, 1193763933, 1138974610, 2435837030, 1345230320, 1138974610, 1746763632, 2804471103, 1345230320, 1138974610, 253337364, 362956592, 760991011, 2119413954, 1138974610, 2455509799, 2119413954, 881572269, 2580303913, 715613548, 1138974610, 1512720281, 599585898};
const unsigned long long fl3g[28] =  {972501641, 1216111825, 2455509799, 1816801622, 1193763933, 679651477, 2119413954, 760991011, 1138974610, 2088223570, 715613548, 1138974610, 679651477, 362956592, 722496910, 1138974610, 2326540009, 679651477, 362956592, 1193763933, 785076484, 2326540009, 1073352258, 2580303913, 345202070, 2586022032, 2119413954, 1098844718};

int main(){
	char *flag;
	unsigned long *tampung;
	char msg[] = "FAKE{well_done_man_but_its_just_a_fake_just_more_steps_again_to_the_flag_letgoo_ganbatte_🎉🤩}\n";

	flag = malloc(0x50);
	tampung = malloc((sizeof(fl1g)+sizeof(fl2g)+sizeof(fl3g)));
	int a = 0;
	if(a == 1){
		for(int i=0; i < sizeof(fl1g)/sizeof(fl1g[0]); i++){
			*(tampung + (i*3)) = fl1g[i];
			*(tampung + (i*3+1)) = fl2g[i];
			*(tampung + (i*3+2)) = fl3g[i];
		}
		for(int i=0; i < sizeof(fl1g)/sizeof(fl1g[0]) * 3; i++){
			long long n = 2915263111;
			long long d = 1858939053;
			long long c = (long long)(*(tampung+i));
			long res = 1;
			while(d > 0){
				if((d&1) == 0){
					d /= 2;
					c = (c*c) % n;
				} else {
					d--;
					res = (res*c) % n;
				}
			}
			*(flag+i) = (char)res;
		}
		printf("GG you've reached the final steps, so heres the gift: %s\n", flag);
	} else {
		printf("%s",msg);
	};
	return 0;
}
