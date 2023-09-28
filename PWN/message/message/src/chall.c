// gcc chall.c -o chall
#include <unistd.h>
#include <sys/mman.h>
#include <linux/seccomp.h>
#include <stdio.h>
#include <syscall.h>
#include <seccomp.h>
#include <malloc.h>
#include <string.h>

#define ulong unsigned long long

void setup(){
	setvbuf(stdin, NULL, _IONBF, 0);
	setvbuf(stdout, NULL, _IONBF, 0);
	setvbuf(stderr, NULL, _IONBF, 0);
}

void seccomp_setup(){
  scmp_filter_ctx ctx;
  ctx = seccomp_init(SCMP_ACT_KILL);

  /* Only allow Open, read, write, getdents */
  seccomp_rule_add(ctx, SCMP_ACT_ALLOW, __NR_open, 0);
  seccomp_rule_add(ctx, SCMP_ACT_ALLOW, __NR_read, 0);
  seccomp_rule_add(ctx, SCMP_ACT_ALLOW, __NR_write, 0);
  seccomp_rule_add(ctx, SCMP_ACT_ALLOW, __NR_getdents64, 0);
  seccomp_load(ctx);
}

int main(){
  void *buffer = malloc(0x150);
  void *ptr = mmap(NULL, 0x1000, PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

  setup();
  seccomp_setup();

  if(ptr == MAP_FAILED || buffer == NULL){
    perror("Allocation failed");
    return 1;
  }

  puts("Anything you want to tell me? ");
  read(0, buffer, 0x150);
  memcpy(ptr, buffer, 0x1000);
  
  /* Run the shellcode */
  (*(void(*)())ptr)();

  free(buffer);
  munmap(ptr, 0x1000);
  return 0;
}
