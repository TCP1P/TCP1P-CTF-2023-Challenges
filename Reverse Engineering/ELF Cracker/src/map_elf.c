#include "elf_packer.h"

int section(elf64 *elf, void *pa){
    size_t shnum = elf->eheader->e_shnum;
    size_t elf_section_size;

    if ((elf->sdata = (uint8_t **)calloc(shnum, sizeof(uint8_t *))) == NULL) exit(EXIT_FAILURE);

    for (uint16_t i = 0; i < shnum; i++) {
        if (elf->sheader[i].sh_type == SHT_NOBITS) elf->sdata[i] = (uint8_t *)NULL;
        else {
            elf_section_size = (size_t)elf->sheader[i].sh_size;
            if ((elf->sdata[i] =  (uint8_t *)calloc((size_t)1, elf_section_size)) == NULL) exit(EXIT_FAILURE);
            memcpy(elf->sdata[i], (uint8_t *)pa+elf->sheader[i].sh_offset, elf_section_size);
        }
    }
    return EXIT_SUCCESS;
}


int sheader(elf64 *elf, void *pa){
    size_t shnum = elf->eheader->e_shnum;

    if ((elf->sheader  = (Elf64_Shdr *)calloc(shnum, sizeof(Elf64_Shdr))) == NULL) exit(EXIT_FAILURE);
    memcpy(elf->sheader, (uint8_t *)pa+elf->eheader->e_shoff, sizeof(Elf64_Shdr)*shnum);

    return EXIT_SUCCESS;
}


int pheader(elf64 *elf, void *pa){
    size_t phnum = elf->eheader->e_phnum;

    if ((elf->pheader = (Elf64_Phdr *)calloc(phnum, sizeof(Elf64_Phdr))) == NULL) exit(EXIT_FAILURE);

    memcpy(elf->pheader, (uint8_t *)pa+elf->eheader->e_phoff, sizeof(Elf64_Phdr)*phnum);

    return EXIT_SUCCESS;
}


int eheader(elf64 *elf, void *pa){
    if ((elf->eheader = (Elf64_Ehdr *)calloc((size_t)1, sizeof(Elf64_Ehdr))) == NULL) exit(EXIT_FAILURE);

    memcpy(elf->eheader, pa, sizeof(Elf64_Ehdr));

    return EXIT_SUCCESS;
}


void *map_elf(void *pa){
    elf64 *elf;

    if ((elf = (elf64 *)calloc(1, sizeof(elf64))) == NULL) exit(EXIT_FAILURE);

    eheader(elf, pa);
    pheader(elf, pa);
    sheader(elf, pa);
    section(elf, pa);

    return elf;
}