#include "elf_packer.h"

char *get_section(elf64 *elf, uint16_t idx){
    Elf64_Half shstrndx = elf->eheader->e_shstrndx;
    return ((char *)elf->sdata[shstrndx] + elf->sheader[idx].sh_name);
}

size_t get_section_by_name(elf64 *elf, char *section_name){
    for (int idx = 0; idx < elf->eheader->e_shnum; idx++) {
        if (strcmp(section_name, get_section(elf, idx)) == 0)
            return idx;
    }
    fprintf(stderr, "Section %s not found\n", section_name);
    exit(EXIT_FAILURE);
}


static void *encrypt(elf64 *elf, size_t idx){
    int i,n,p, sh_size = elf->sheader[idx].sh_size;
    uint8_t *sdata = elf->sdata[idx];
    void *key;
    int fd;

    if((fd = open("/dev/urandom", O_RDONLY)) < 0) exit(EXIT_FAILURE);
    if((key = calloc(1, sh_size)) == NULL) exit(EXIT_FAILURE);
    if ((i = read(fd, key, sh_size)) < 0) exit(EXIT_FAILURE);
    close(fd);

    for (i = 0; i < sh_size; i++) {
        n = 0;
        p = ((uint8_t*)key)[sh_size-i-1];
        sdata[i] ^= p;
        
        while(p){
            n ^= p;
            p /= 2;
        }
        *(uint8_t*)(key+sh_size-i-1) = n;
    }
    return key;
}


int packed_and_mapped_then_write_to_memory(elf64 *elf, size_t fsize, size_t textsec_idx, char *fname )
{
    size_t phtsize = elf->eheader->e_phentsize * elf->eheader->e_phnum;
    size_t shtsize  = elf->eheader->e_shnum * elf->eheader->e_shentsize;
    int fd;
    void *ptr_packed, *key;
    
    key = encrypt(elf, textsec_idx);
    
    if ((ptr_packed = calloc((size_t)1, fsize)) == NULL) exit(EXIT_FAILURE);
    
    memcpy(ptr_packed, elf->eheader, elf->eheader->e_ehsize);
    memcpy(ptr_packed + elf->eheader->e_phoff, elf->pheader, phtsize);
    memcpy(ptr_packed + elf->sheader[textsec_idx].sh_offset + 0x750, key, elf->sheader[textsec_idx].sh_size);
    for (size_t idx = 0; idx < elf->eheader->e_shnum; idx++) {
        if (elf->sdata[idx] == NULL) continue;
        else memcpy(ptr_packed + elf->sheader[idx].sh_offset, elf->sdata[idx], elf->sheader[idx].sh_size);
    }
    memcpy(ptr_packed + elf->eheader->e_shoff, elf->sheader, shtsize);
    
    if ((fd = open(fname, O_RDWR | O_CREAT | O_TRUNC, 0755)) == -1) exit(EXIT_FAILURE);
    if ((fd = write(fd, ptr_packed, fsize)) == -1) exit(EXIT_FAILURE);

    free(ptr_packed);
    free(key);
    key = NULL;

    return 0;
}
