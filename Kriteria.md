# Kriteria Pembuatan Challenge

Berikut adalah kriteria yang harus dipenuhi dalam merancang dan mengevaluasi challenge Capture the Flag (CTF):

## Kriteria Umum TCP1P CTF
- Deskripsi dan hint di tulis dalam bahasa inggris.
- Untuk soal yang membutuhkan hosting, wajib menggunakan docker compose. Contoh dari docker compose bisa di cek di `/Beginner/Un-Secure/dist/Un-Secure/`
- Dalam CTF TCP1P, hindari penggunaan soal yang mengharuskan menebak (guessing).
- Juga hindari penggunaan soal steganografi yang berhubungan dengan ciphertext. Namun, masih diperbolehkan jika soal steganografi berhubungan dengan pemulihan gambar, disk, zip, atau terkait dengan algoritma.
- Format flag untuk CTF ini `TCP1P{.*}`.

## Format dan Struktur Soal
```
<Category>/
└── <Challenge Name>
    ├── attachment // Berisikan attachment yang akan diberikan ke peserta
    │   ├── file 1
    │   ├── fchallengeile 2
    │   └── file 3
    ├── dist // Berisikan source code dari challenge
    │   └── <Challenge Name>
    │       ├── file 1
    │       ├── file 1
    │       └── file 3
    ├── POC // Berisikan solver/writeup/POC untuk challenge
    │   ├── file 1
    │   ├── file 2
    │   └── README.md // Berisikan writeup/POC challenge
    └── README.md // Berisikan deskripsi, flag, dan hint challenge. Untuk referensi bisa di cek disini https://github.com/TCP1P/TCP1P-CTF-2023-Challenges/tree/main/Beginner/Un-Secure
```


## Tingkat Kesulitan
Tingkat kesulitan akan dibagi menjadi 3, yaitu:

### Easy
Soal ini akan berisi challenge dasar dalam CTF dan dapat dianggap sebagai tantangan yang mudah bagi peserta. Kriteria soal Easy sebagai berikut:
- Berisikan soal-soal dasar CTF.
- Mudah untuk dikerjakan.
- Sudah memiliki tutorial eksplotasi yang banyak diketahui.
- Atau memiliki deksripsi dan hint yang membantu untuk mengerjakan soal sehingga soal lebih mudah untuk dikerjakan.

### Medium
Challenge dengan tingkat kesulitan sedang, yang menguji pemahaman peserta yang lebih mendalam tentang konsep-konsep dalam CTF. Kriteria soal Medium sebagai berikut:
- Tidak terlalu mudah untuk dikerjakan.
- Serangan yang sudah biasa dieksploitasi.
- Tidak memiliki kriteria yang ada pada kategori Hard.

### Hard
Challenge yang memiliki tingkat kesulitan tinggi dan membutuhkan pemahaman yang mendalam dalam menyelesaikannya. Kriteria soal Hard bisa memiliki salah satu kriteria berikut:
- Pengeksploitasian teknik serangan yang sulit untuk dilakukan.
- Pengeksploitasian teknik serangan yang sangat jarang diketahui.
- Celah Pengeksplotasian sangat susah untuk di deteksi.

## Kriteria Soal Per Kategori
### 1. Beginner

#### Deskripsi
Challenge kategori Beginner merupakan challenge yang dirancang untuk peserta yang memiliki pengetahuan dasar dalam Cyber Security. Challenge ini bertujuan untuk mengenalkan peserta dengan konsep-konsep dasar dalam CTF.

#### Kriteria
- Challenge harus memiliki tingkat kesulitan easy.
- Challenge harus memberikan penjelasan yang jelas mengenai konsep yang diajarkan.
- Challenge harus memuat petunjuk yang membantu peserta dalam menyelesaikan tantangan.
- Challenge harus menguji pemahaman peserta terhadap konsep dasar dalam CTF.

### 2. Cryptography

#### Deskripsi
Challenge kategori Cryptography merupakan Challenge yang berkaitan dengan enkripsi, dekripsi, dan pemahaman terhadap algoritma kriptografi.

#### Kriteria
...

### 3. Forensics

#### Deskripsi
Challenge kategori Forensics berkaitan dengan analisis forensik pada berbagai jenis file atau sistem.

#### Kriteria
...

### 4. Miscellaneous

#### Deskripsi
Challenge kategori Miscellaneous merupakan Challenge yang tidak dapat dikategorikan dalam kategori-kategori lainnya.

#### Kriteria
- Challenge harus memiliki variasi yang menarik dan tidak biasa.
- Contoh dari challenge ini adalah semua model challenge yang tidak tercantum di kategori, contohnya adalah Sandbox, Programing Problem, AI hacking, dll.

### 5. Mobile

#### Deskripsi
Challenge kategori Mobile berkaitan dengan aplikasi dan sistem operasi mobile.

#### Kriteria
...

### 6. PWN (Binary Exploitation)

#### Deskripsi
Challenge kategori PWN (Binary Exploitation) berkaitan dengan pengeksploitasian kerentanan pada program yang dijalankan di komputer.

#### Kriteria
...

### 7. Reverse Engineering

#### Deskripsi
Challenge kategori Reverse Engineering berkaitan dengan analisis dan pemahaman terhadap kode atau biner yang sudah dikompilasi.

#### Kriteria
...

### 8. Web

#### Deskripsi
Challenge kategori Web berkaitan dengan keamanan dan kerentanan pada aplikasi web.

#### Kriteria
- Challenge harus berkaitan dengan kerentanan atau teknik serangan pada aplikasi web.
