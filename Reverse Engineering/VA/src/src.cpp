#include <iostream>
#include <string>
#include <vector>
#include <map>

#include <Windows.h>

char g_Input[512];

DWORD CalcJMP(DWORD target, DWORD destination) {
	return destination - (target + 5);
}

void Fail() {
	printf("Wrong flag!\n");
}

void Correct() {
	printf("Correct flag!\n");
}

DWORD InitFlagChecker3() {
	void* pAddr = VirtualAlloc(NULL, 0x1000, MEM_COMMIT, PAGE_EXECUTE_READWRITE);
	if (!pAddr) {
		return -1;
	}
	// printf("pAddr: %p\n", pAddr);

	/*
	* This shellcode basically checks for two 4 bytes with xored one, just in a random order or execution (hence the random jump)
	* The last 2 bytes are checked if they both is NULL because they both have the same character (0x30) and making sure that the one that NULLs it out is two 0x30 ('0')
	* So, it should be something like this in C++
	* if (*(DWORD*)(g_Input + 20)^0xKEY == 0xVALUE) and if (*(DWORD*)(g_Input + 24)^0xKEY == 0xVALUE) for the first 2 check, and then:
	* if (*(BYTE*)(g_Input + 28)^*(BYTE*)(g_Input + 29) == 0) if (*(BYTE*)(g_Input + 29) == 0x30)
	* Base Address: 01920000
		jmp 01920010
		cmp eax,A4CFE9CC
		jmp 01920017
		xor eax,CAFEBABE
		jmp 01920002
		mov eax,[VA.g_Input+14]
		jmp 01920009
		je 0192001E
		jmp VA.Fail
		jmp 0192002E
		cmp eax,ACEFE1A8
		jmp 01920035
		xor eax,DEADBEEF
		jmp 01920020
		mov eax,[VA.g_Input+18]
		jmp 01920027
		je 0192003C
		jmp VA.Fail
		mov al,[VA.g_Input+1C]
		mov cl,[VA.g_Input+1D]
		xor al,cl
		cmp al,00
		jne 01920057
		cmp cl,30
		jne 01920057
		jmp VA.Correct
		jmp VA.Fail
	*/

	// we add 0xFF so IDA or Ghidra won't be able to intepret it as an instruction (doesn't really matter lol, just for fun :D)
	BYTE *shellCode = (BYTE*) "\xFF\xEB\xFF\x0E\xFF\x3D\xFF\xCC\xFF\xE9\xFF\xCF\xFF\xA4\xFF\xEB\xFF\x0E\xFF\x35\xFF\xBE\xFF\xBA\xFF\xFE\xFF\xCA\xFF\xEB\xFF\xF2\xFF\xA1\xFF\xB0\xFF\x43\xFF\xFE\xFF\x00\xFF\xEB\xFF\xF2\xFF\x74\xFF\x05\xFF\xE9\xFF\x82\xFF\x10\xFF\xDE\xFF\xFF\xFF\xEB\xFF\x0E\xFF\x3D\xFF\xA8\xFF\xE1\xFF\xEF\xFF\xAC\xFF\xEB\xFF\x0E\xFF\x35\xFF\xEF\xFF\xBE\xFF\xAD\xFF\xDE\xFF\xEB\xFF\xF2\xFF\xA1\xFF\xB0\xFF\x43\xFF\xFE\xFF\x00\xFF\xEB\xFF\xF2\xFF\x74\xFF\x05\xFF\xE9\xFF\x64\xFF\x10\xFF\xDE\xFF\xFF\xFF\xA0\xFF\xB0\xFF\x43\xFF\xFE\xFF\x00\xFF\x8A\xFF\x0D\xFF\xB0\xFF\x43\xFF\xFE\xFF\x00\xFF\x30\xFF\xC8\xFF\x3C\xFF\x00\xFF\x75\xFF\x0A\xFF\x80\xFF\xF9\xFF\x30\xFF\x75\xFF\x05\xFF\xE9\xFF\x69\xFF\x10\xFF\xDE\xFF\xFF\xFF\xE9\xFF\x44\xFF\x10\xFF\xDE\xFF\xFF";
	for (int i = 0; i < 92; i++) {
		*(BYTE*)((DWORD)pAddr + i) = shellCode[i * 2 + 1];
	}

	*(DWORD*)((DWORD)pAddr + 67) = (DWORD)g_Input + 29;
	*(DWORD*)((DWORD)pAddr + 17) = (DWORD)g_Input + 20;

	*(DWORD*)((DWORD)pAddr + 26) = CalcJMP((DWORD)pAddr + 26 - 1, (DWORD)Fail);
	*(DWORD*)((DWORD)pAddr + 56) = CalcJMP((DWORD)pAddr + 56 - 1, (DWORD)Fail);
	*(DWORD*)((DWORD)pAddr + 88) = CalcJMP((DWORD)pAddr + 88 - 1, (DWORD)Fail);
	*(DWORD*)((DWORD)pAddr + 83) = CalcJMP((DWORD)pAddr + 83 - 1, (DWORD)Correct);

	*(DWORD*)((DWORD)pAddr + 61) = (DWORD)g_Input + 28;
	*(DWORD*)((DWORD)pAddr + 47) = (DWORD)g_Input + 24;

	return (DWORD)pAddr;
}

DWORD InitFlagChecker2() {
	void* pAddr = VirtualAlloc(NULL, 0x1000, MEM_COMMIT, PAGE_EXECUTE_READWRITE);
	if (!pAddr) {
		return -1;
	}
	void* pFirst = pAddr;
	// printf("pAddr: %p\n", pAddr);

	BYTE* data = (BYTE*)"\x94\xd3\xc9\xe3\xff\xf2\x93\xd6\xc5\x93";
	for (int i = 0; i < 10; i++) {
		void* pNext = VirtualAlloc(NULL, 0x1000, MEM_COMMIT, PAGE_EXECUTE_READWRITE);
		if (!pNext) {
			return -1;
		}

		/*
		* Character comparison with xor but in LinkedList style
			mov [ebx], 0
			mov [ecx], 0xA0
			mov edx, input
			add edx, [ebx]
			mov al, [edx]
			xor al, [ecx]
			cmp al, char
			je success
			jmp fail
			:success
			add [ebx], 1
			jmp next (+12)
		*/

		memcpy((void*)((DWORD)pAddr + 6), (void*)"\xC7\x01\xA0\x00\x00\x00", 6);

		memcpy((void*)((DWORD)pAddr + 21), (void*)"\x32\x01", 2);

		*(BYTE*)((DWORD)pAddr + 27) = 0xE9;
		*(DWORD*)((DWORD)pAddr + 28) = (DWORD)CalcJMP((DWORD)pAddr + 28 - 1, (DWORD)Fail);

		memcpy((void*)((DWORD)pAddr + 32), (void*)"\x83\x03\x01", 3);

		memcpy((void*)((DWORD)pAddr + 19), (void*)"\x8A\x02", 2);

		*(BYTE*)((DWORD)pAddr + 12) = 0xBA;
		*(DWORD*)((DWORD)pAddr + 12 + 1) = (DWORD)g_Input + 10;

		memcpy((void*)((DWORD)pAddr + 17), (void*)"\x03\x13", 2);
		
		memcpy(pAddr, (void*)"\xC7\x03\x00\x00\x00\x00", 6);

		*(BYTE*)((DWORD)pAddr + 23) = 0x3C;

		if (i == 0) *(BYTE*)((DWORD)pAddr + 24) = 0x94;
		else if (i == 1) *(BYTE*)((DWORD)pAddr + 24) = 0xd3;
		else if (i == 2) *(BYTE*)((DWORD)pAddr + 24) = 0xc9;
		else if (i == 3) *(BYTE*)((DWORD)pAddr + 24) = 0xe3;
		else if (i == 4) *(BYTE*)((DWORD)pAddr + 24) = 0xff;
		else if (i == 5) *(BYTE*)((DWORD)pAddr + 24) = 0xf2;
		else if (i == 6) *(BYTE*)((DWORD)pAddr + 24) = 0x93;
		else if (i == 7) *(BYTE*)((DWORD)pAddr + 24) = 0xd6;
		else if (i == 8) *(BYTE*)((DWORD)pAddr + 24) = 0xc5;
		else if (i == 9) *(BYTE*)((DWORD)pAddr + 24) = 0x93;

		memcpy((void*)((DWORD)pAddr + 25), (void*)"\x74\x05", 2);

		*(BYTE*)((DWORD)pAddr + 35) = 0xE9;
		*(DWORD*)((DWORD)pAddr + 36) = (DWORD) CalcJMP((DWORD)pAddr + 36 - 1, (DWORD) pNext + (i < 9 ? 12 : 0));

		pAddr = pNext;
	}

	// printf("pLast: %p\n", pAddr);

	*(BYTE*)((DWORD)pAddr) = 0xE9;
	*(DWORD*)((DWORD)pAddr + 1) = (DWORD) CalcJMP((DWORD)pAddr + 1 - 1, (DWORD) InitFlagChecker3());

	return (DWORD) pFirst;
}

DWORD InitFlagChecker1() {
	void *pAddr = VirtualAlloc(NULL, 0x1000, MEM_COMMIT, PAGE_EXECUTE_READWRITE);
	if (!pAddr) {
		return -1;
	}
	void* pFirst = pAddr;
	// printf("pAddr: %p\n", pAddr);

	int randomIndices[10];
	for (int i = 0; i < 10; i++) {
		randomIndices[i] = i;
	}

	for (int i = 0; i < 10; i++) {
		int j = rand() % 10;
		int temp = randomIndices[i];
		randomIndices[i] = randomIndices[j];
		randomIndices[j] = temp;
	}
	
	for (int n = 0, i = 0; n < 10; n++, i = randomIndices[n]) {
		void *pNext = VirtualAlloc(NULL, 0x1000, MEM_COMMIT, PAGE_EXECUTE_READWRITE);
		if (!pNext) {
			return -1;
		}

		/*
		* Normal character comparison but in random order. (LinkedList style)
		*	cmp byte ptr [input+index], char
		*	jne fail
		*	jmp next
		*	:fail
		*	jmp fail_func
		*/

		*(DWORD*)((DWORD)pAddr + 2) = (DWORD)(g_Input)+i;

		*(DWORD *)((DWORD)pAddr + 10) = (DWORD) CalcJMP((DWORD)pAddr + 10 - 1, (DWORD) pNext);

		*(BYTE*)((DWORD)pAddr + 9) = *(BYTE*)((DWORD)pAddr + 14) = 0xE9;

		*(DWORD*)((DWORD)pAddr + 15) = (DWORD) CalcJMP((DWORD)pAddr + 15 - 1, (DWORD) Fail);

		*(BYTE*)((DWORD)pAddr + 1) = 0x3D;

		*(WORD*)((DWORD)pAddr + 7) = 0x0575;

		if (i >= 5) {
			if (i >= 8 && i < 10) {
				if (i == 8) { // 8
					*(BYTE*)((DWORD)pAddr + 6) = '_';
				}
				else { // 9
					*(BYTE*)((DWORD)pAddr + 6) = 'B';
				}
			}
			else {
				if (i == (3 * 2)) { // 6
					*(BYTE*)((DWORD)pAddr + 6) = '5';
				}
				else if (i >= 5 && i <= 7) {
					if (i == 7) { // 7
						*(BYTE*)((DWORD)pAddr + 6) = 't';
					}
					else {
						*(BYTE*)((DWORD)pAddr + 6) = 'u';
					}
				}
			}
		}
		else {
			if (i < 1) { // 0
				*(BYTE*)((DWORD)pAddr + 6) = '1';
			}
			else if (i == 1) { // 1
				*(BYTE*)((DWORD)pAddr + 6) = 't';
			}
			else if (i > 1) {
				if (i == 2) { // 2
					*(BYTE*)((DWORD)pAddr + 6) = 'S';
				}
				else if (i == 4) { // 4
					*(BYTE*)((DWORD)pAddr + 6) = 'J';
				}
				else { // 3
					*(BYTE*)((DWORD)pAddr + 6) = '_';
				}
			}
		}

		*(BYTE*)((DWORD)pAddr) = 0x80;

		pAddr = pNext;
	}

	// printf("pAddr: %p\n", pAddr);

	void* p1 = VirtualAlloc(NULL, 0x4, MEM_COMMIT, PAGE_EXECUTE_READWRITE);
	void* p2 = VirtualAlloc(NULL, 0x4, MEM_COMMIT, PAGE_EXECUTE_READWRITE);

	*(BYTE*)((DWORD)pAddr) = 0xBB;
	*(DWORD*)((DWORD)pAddr + 1) = (DWORD)p1;

	*(BYTE*)((DWORD)pAddr + 5) = 0xB9;
	*(DWORD*)((DWORD)pAddr + 6) = (DWORD)p2;

	*(BYTE*)((DWORD)pAddr + 10) = 0xE9;
	*(DWORD*)((DWORD)pAddr + 11) = (DWORD)CalcJMP((DWORD)pAddr + 11 - 1, (DWORD)InitFlagChecker2());

	return (DWORD)pFirst;
}

__forceinline void InitInputAndFlagChecker1() {
	BYTE shellCode[] = {
		0x56,										// push esi
		0x57,										// push edi
		0xBF, 0x00, 0x00, 0x00, 0x00,				// mov edi, <getchar>
		0x33, 0xF6,									// xor esi,esi
		0xFF, 0xD7,									// call edi
		0x3C, 0x0A,									// cmp al,0A { 10 }
		0x74, 0x0F,									// je +1F
		0x88, 0x86, 0x00, 0x00, 0x00, 0x00,			// mov [esi+<input>],al
		0x8D, 0x76, 0x01,							// lea esi,[esi+01]
		0xFF, 0xD7,									// call edi
		0x3C, 0x0A,									// cmp al,0A { 10 }
		0x75, 0xF1,									// jne +10
		0x5F,										// pop edi
		0xC6, 0x86, 0x00, 0x00, 0x00, 0x00, 0x00,	// mov byte ptr [esi+<input>],00 { 0 }
		0x5E,										// pop esi
		0xC3										// ret
	};

	// allocates memory for the shellcode
	void* pShellCode = VirtualAlloc(NULL, sizeof(shellCode), MEM_COMMIT, PAGE_EXECUTE_READWRITE);
	if (!pShellCode) {
		return;
	}
	// printf("pShellCode: %p\r\n", pShellCode);

	memcpy(pShellCode, shellCode, sizeof(shellCode));
	
	// get and set getchar address to the shellcode
	
	// ucrtbase.dll
	char yVNXRB[] = { 0xFB, 0xE7, 0xF6, 0xFC, 0xEA, 0xDD, 0xED, 0xDD, 0x26, 0xDC, 0xF4, 0xF4, 0x00 };
	for (int UwH = 0; UwH < 12; UwH++) {
		yVNXRB[UwH] += 0x5B;
		yVNXRB[UwH] ^= UwH;
		yVNXRB[UwH] += UwH;
		yVNXRB[UwH] ^= 0x3E;
		yVNXRB[UwH] += UwH;
		yVNXRB[UwH] = ~yVNXRB[UwH];
		yVNXRB[UwH]++;
		yVNXRB[UwH] += UwH;
		yVNXRB[UwH]--;
		yVNXRB[UwH] -= 0x22;
	}

	HMODULE ucrtbase = (HMODULE)GetModuleHandleA(yVNXRB);
	if (!ucrtbase) {
		return;
	}

	// getchar
	char BWLBkG[] = { 0x27, 0x2E, 0x30, 0x02, 0x0E, 0x06, 0x1E, 0x00 };
	for (int DVn = 0; DVn < 7; DVn++) {
		BWLBkG[DVn]++;
		BWLBkG[DVn] ^= 0x53;
		BWLBkG[DVn] -= 0x57;
		BWLBkG[DVn]++;
		BWLBkG[DVn] += 0x10;
		BWLBkG[DVn] ^= 0x6F;
		BWLBkG[DVn] = ~BWLBkG[DVn];
		BWLBkG[DVn] += DVn;
		BWLBkG[DVn] ^= DVn;
		BWLBkG[DVn] -= DVn;
		BWLBkG[DVn] ^= 0x7A;
		BWLBkG[DVn] -= 0x1B;
		BWLBkG[DVn] ^= DVn;
		BWLBkG[DVn] -= 0x5C;
		BWLBkG[DVn] ^= DVn;
		BWLBkG[DVn] -= DVn;
		BWLBkG[DVn] = ~BWLBkG[DVn];
		BWLBkG[DVn]++;
		BWLBkG[DVn] += DVn;
		BWLBkG[DVn] = ~BWLBkG[DVn];
	}

	*(DWORD*)((DWORD)pShellCode + 3) = (DWORD)GetProcAddress(ucrtbase, BWLBkG);

	// set buffer address
	*(DWORD*)((DWORD)pShellCode + 17) = (DWORD)g_Input;
	*(DWORD*)((DWORD)pShellCode + 33) = (DWORD)g_Input;

	((void(*)())pShellCode)();

	// free memory
	VirtualFree(pShellCode, 0, MEM_RELEASE);

	// we create a new thread for flag checker because it does various jump. (just to prevent crash lol)
	CreateThread(0, 0, (LPTHREAD_START_ROUTINE)InitFlagChecker1(), 0, 0, 0);
}

 
int main()
{
	InitInputAndFlagChecker1();
	getchar();
	return 0;
}