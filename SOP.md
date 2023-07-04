# SOP TCP1P Capture the Flag (CTF)

SOP ini bertujuan untuk memberikan panduan kepada Problemsetter dan Supervisor yang bertanggung jawab dalam membuat challenge dan mengatur acara Capture the Flag (CTF) dalam 8 kategori yang berbeda. SOP ini juga memperkenalkan 5 supervisor yang akan memantau setiap kategori.

## Pendahuluan

1. Problemsetter adalah individu yang bertanggung jawab dalam merancang, mengembangkan, dan menguji challenge CTF dalam 8 kategori yang ditentukan sebelumnya.
2. Terdapat 5 supervisor, masing-masing ditugaskan untuk mengawasi dan mengevaluasi challenge dalam kategori tertentu.
3. Setiap problemsetter dan juga supervisor diharapkan mematuhi pedoman dan prosedur yang ditetapkan dalam SOP ini.

## Proses Penugasan Tugas

### Problemsetter
Setiap problemsetter akan diberi tugas untuk merancang challenge dalam satu atau lebih dari 8 kategori berikut:
   a. Beginner
   b. Cryptography
   c. Forensics
   d. Miscellaneous
   e. Mobile
   f. PWN (Binary Exploitation)
   g. Reverse Engineering
   h. Web

### Supervisor
Setiap Supervisor akan bertugas untuk melakukan review pada challenge yang dibuat oleh problemsetter dengan mengikuti kriteria yang ada di [Kriteria.md](/README.md). Untuk setiap soal yang sudah diterima, supervisor wajib untuk mendatanya di google sheet berikut: [LINK](https://docs.google.com/spreadsheets/d/13cgB0gQIriOG9T1IfEcoAtaFxxyK_AtjpHezKM4F0w0/edit?usp=sharing)

## Tahapan Pembuatan Challenge CTF

Problemsetter akan melalui serangkaian tahapan dalam merancang challenge CTF:

1. Inisiasi: Problemsetter akan meng-fork repositori yang ditentukan sebelum memulai pembuatan challenge.
2. Pengembangan: Problemsetter akan membuat challenge yang relevan dengan kategori yang ditugaskan dalam folder yang sesuai dengan kategori tersebut.
3. Penataan Folder: Problemsetter akan membuat folder challenge dengan mengikuti format yang sudah tertera di [Kriteria.md](/README.md).
4. Pengujian: Problemsetter akan menguji challenge yang dibuat untuk memastikan kualitas dan tingkat kesulitannya sesuai.
5. Pull Request: Setelah challenge selesai dibuat, problemsetter akan membuat pull request untuk menyerahkan challenge kepada supervisor yang ditugaskan.
6. Revisi: Jika diperlukan, problemsetter akan melakukan revisi pada challenge berdasarkan umpan balik dari supervisor dalam kategori yang bersangkutan.

## Hubungan dengan Supervisor

1. Setiap problemsetter akan bekerja sama dengan supervisor yang ditugaskan dalam kategori tertentu.
2. Problemsetter akan memberikan challenge yang telah dibuat kepada supervisor untuk dievaluasi dan direvisi jika diperlukan.
3. Problemsetter harus terbuka untuk menerima saran, kritik, dan perubahan yang diperlukan dari supervisor untuk meningkatkan kualitas challenge.

## Rangkaian Peninjauan Challenge

1. Setelah selesai membuat challenge, problemsetter akan mengirimkan challenge tersebut kepada supervisor melalui pull request di repositori yang ditentukan, dengan mengetag username supervisor yang bertanggung jawab atas kategori tersebut.
2. Supervisor akan mengevaluasi challenge berdasarkan kriteria yang telah ditetapkan untuk kategori tersebut yang bisa dilihat di [Kriteria.md](/Kriteria.md).
3. Jika challenge memenuhi persyaratan dan standar yang ditetapkan, supervisor akan memberikan persetujuan dan melakukan merge terhadap pull request problemsetter yang bersangkutan.
4. Jika challenge memiliki tingkat kesulitan yang rendah, supervisor akan menempatkannya dalam kategori "Beginner".
5. Jika challenge tidak memenuhi persyaratan atau perlu perbaikan, supervisor akan memberikan umpan balik kepada problemsetter untuk diperbaiki.

## Proses Perbarui Challenge yang Telah Diterima oleh Supervisor

1. Jika ada perbaruan yang diperlukan pada challenge yang telah diterima oleh supervisor, problemsetter dapat mengirimkan pull request kembali untuk direview ulang oleh supervisor.

## Penutup

1. Problemsetter dan supervisor harus mematuhi semua persyaratan, prosedur, dan instruksi yang ditetapkan dalam SOP ini.
2. Problemsetter dan supervisor harus menjaga kerahasiaan informasi dan menjaga keamanan challenge CTF yang dibuat.
3. Problemsetter dan supervisor harus bekerja sama untuk mencapai tujuan event CTF yang sukses.
