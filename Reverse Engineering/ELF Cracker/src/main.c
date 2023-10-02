#include "elf_packer.h"

static inline bool is_elf(void *addr){
    if (strncmp((char *)addr, ELFMAG, SELFMAG) == 0)
        return true;
    return false;
}

void *map_file(char *filename, size_t *ptr_fsize){
    int fd;
    struct stat stbuf;
    off_t fsize;
    void *pa;

    if ((fd = open(filename, O_RDONLY)) == -1) exit(EXIT_FAILURE);
    if (fstat(fd, &stbuf) == -1) exit(EXIT_FAILURE);
    fsize = stbuf.st_size;
    if ((pa = mmap(0, (size_t)fsize, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, 0)) == (void*)-1) exit(EXIT_FAILURE);

    close(fd);
    *ptr_fsize = (size_t)fsize;
    return pa;
}

void nullify(){
    setbuf(stdin, NULL);
    setbuf(stdout, NULL);
    setbuf(stderr, NULL);
}

int main(int argc, char **argv){

    void *pa;
    size_t fsize, textsec_idx;
    elf64 *elf;

    nullify();

    if (argc < 2 || argc > 2){
        printf("Usage: %s <elf>\n", argv[0]);
        return EXIT_SUCCESS;
    }

    pa = map_file(argv[1], &fsize);
    if (!is_elf(pa)) {
        fprintf(stderr, "File is not an elf\n");
        return EXIT_FAILURE;
    }

    elf = (elf64 *)map_elf(pa);
    textsec_idx = get_section_by_name(elf, ".text");

    if(*(uint64_t*)(pa + elf->sheader[textsec_idx].sh_offset + 0x750) != 0){
        fprintf(stderr,"This elf was encrypted\n");
        return EXIT_FAILURE;
    }
    munmap(pa, fsize);    
    if(packed_and_mapped_then_write_to_memory(elf, fsize, textsec_idx, argv[1])){
        fprintf(stderr,"Error :(\n");
    }
    printf("Success :)\n");
    return EXIT_SUCCESS;
}
