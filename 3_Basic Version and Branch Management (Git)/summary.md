# **(3) Basic Version and Branch Management (Git)**

*File* ini merupakan resume dari materi *section* 3 pada program Flutter. From Zero to Hero dari Alterra Academy pada Studi Independen Bersertifikat Batch 3 tahun 2022.


## **Data Diri**

| Nama                     | Kelas      | Nomor      |
|--------------------------|------------|------------|
| Nur Muhammad Ainul Yaqin | Flutter A  | 20         | 

</br>

## **Summary**
Di section 3 (tiga) ini saya belajar tentang **Basic Version and Branch Management (Git)** dengan pemateri mas Rizky.

> **TL;DR**
> 
> Terdapat 3 (tiga) hal utama yang saya pelajari pada *section* ini sebagai berikut.
> 
> 1. Mengenai *versioning*. *Versioning* adalah pengaturan versi atau pelacakan perubahan dari setiap kode dari program kita. Setiap perubahan kode dapat di-*track* baik itu dari perubahan kode, waktu, maupun siapa pengubahnya dengan memanfaatkan *tool* seperti Git.
> 2. Beberapa *command* pada Git. Pada *section* ini, saya baru mempelajari beberapa *command* baru bagi saya untuk melakukan *versioning*. Beberapa di antaranya adalah `git stash`, `git stash apply`, `git reset`, dan sebagainya.
> 3. Mengenai *workflow collaboration*. Pada *section* ini, saya mempelajari pemisahan *branch* untuk membuat *workflow* saat berkolaborasi tidak saling menghasilkan *conflict* satu sama lain. Caranya, yaitu dengan memisahkan *branch* setidaknya untuk *production* dan *development*. Selain itu, setiap penambahan fitur dapat juga membuat *branch* baru, sekaligus agar lebih mudah untuk di-*review* ketika dilakukan *pull request*.

</br>

Adapun versi detail resume sebagai berikut.

### **Apa itu versioning?**

*Versioning* adalah pengaturan versi atau pelacakan perubahan dari setiap kode dari program kita. Contohnya, adalah pada revisi-revisi pada saat skripsi. Agar dapat melakukan *track*, setiap revisi pada bimbingan maka kita buat sebuah file baru. Begitu juga dengan *versioning*, setiap perubahan kode dapat di-*track* baik itu dari perubahan kode, waktu, maupun siapa pengubahnya.

> Ingat, tidak ada project yang sempurna secara langsung. Selalu ada revisi di balik *project* yang sempurna. Bahkan project-project Google, Facebook, dan Apple pun seperti itu.

</br>

### **Tools**

Terdapat 3 (tiga), yaitu sebagai berikut.

1. **Version Control System (VCS)**, yang terbagi menjadi 3 masa.
    1. Single User
    2. Centralized
    3. Distributed (termasuk Git yang lahir pada tahun 2005)
2. **Source Code Manager (SCM)**, dan
3. **Revision Control System (RCS)**

> Git sendiri merupakan salah satu VCS populer yang digunakan para *developer* untuk mengembangkan *software* secara bersama-sama.

![Git](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/120c5eb4-a5d2-482f-943f-c2568db404a7/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220824%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220824T094316Z&X-Amz-Expires=86400&X-Amz-Signature=649f424f6fa856864a0b0a78c5f7b92eb9836a91b35bb8619672229b4a5a8253&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)

Dalam sebuah git *repository* (folder project), terdapat dua *file*, yaitu file *project* dan *history* file (biasanya *hidden*). Dengan git ini, dapat dilakukan *undo* ke suatu poin *commit* yang telah ter-*track* di *history file* sebelumnya.

Git memantau setiap perubahan yang terjadi pada suatu *file*, termasuk *file source code*.

Terdapat beberapa git *server* untuk menampung *remote* git *repositoryi* tersebut, contohnya Github, Bitbucket, dan Gitlab. Git *server* tersebut dapat dikatakan sebagai media sosial dari para *developer*.

</br>

### **Steps**

Berikut langkah-langkah untuk melakukan *set*-up *git* dengan menggunakan Github ([github.com](https://www.github.com)).

1. Buat *repository* baru di Github.
2. Beri nama *repository* tersebut.
3. Beri deskripsi *repository* tersebut (opsional).
4. Atur visibilitas, dapat berupa *public* (dapat diakses semua orang) atau *private* (hanya dapat dilihat oleh pemilik dan beberapa orang yang diundang).
5. Tambahkan beberapa inisialisasi seperti README *file*, gitignore, dan *license*. 
    
    >**Tips:** 
    >Jangan upload file yang merupakan *library package* ataupun *environment*, seperti node-modules pada NodeJS. Gunakan gitignore untuk melakukannya.
    
6. Klik tombol Create Repository.

Selanjutnya, adalah sinkronisasi dengan *local repository* dengan *remote server*.

1. *Install* git.
2. Inisialisasi git. Pada terminal, ketik `git init`.
3. Koneksi dengan *remote repository*. 
    
    `git commit -m "first commit"`, beri pesan yang deskripsi namun singkat, dapat menggunakan aturan *conventional commit*.
    
    `git branch -M main`
    
    `git remote add origin (alamat git remote)`, dapat menggunakan HTTPS atau SSH, namun SSH lebih aman.
    
    `git push -u origin main`

</br>

### **Cara Kerja Git**

Terdapat 3 (tiga) *staging area* di *local repository*.

> **Working Directory** → *git add* → **Staging Area** → *git commit* → **Repository** → *git push* → **Remote Repository**

Terdapat beberapa *command* yang umum digunakan pada git sebagai berikut.

- `git status`, untuk menampilkan status *repository* saat ini.
- `git add`, untuk menambahkan *file* dalam Working Directory **untuk menuju ke Staging Area. Dapat semua file (`git add .`) ataupun tidak.
- `git commit`, untuk menambahkan semua file perubahan pada satu Repository. Hindari pesan yang tidak jelas (`git commit -m “pesan commit”`). Disarankan menggunakan aturan *conventional commit*
- `git push`, untuk mengunggah Repository ke Remote Repository.
- `git diff`, untuk melihat perubahan apa saja yang terjadi dalam *project* dibanding dengan versi sebelumnya.
- `git stash`, untuk mengatasi *conflict*. Berupa penyimpanan sementara (Stash Area) untuk perubahan baru agar dapat melakukan *fixing* pada kode yang lama. Untuk mengembalikannya, gunakan `git stash apply`.
- `git log --online`, untuk melihat riwayat disertai dengan Id dan *commit message*.
- `git reset (id commit)`, untuk pengembalian pada poin tertentu. `--soft` berarti perubahan yang telah terjadi akan tetap ter-*tracking* di/sebagai Staging Area. `--hard` berarti sebaliknya. Sebisa mungkin jangan melakukan `git reset`, karena akan mengubah *flow* dari *software*.
- `git fetch`, untuk mengambil data *update* yang ada pada Remote Repository, tetapi tidak dimasukkan ke dalam Repository.
- `git pull`, untuk menarik data *update* keseluruhan (gabungan dari `git fetch` dan `git merge`) dari Remote Repository ke dalam Repository.

</br>

### **Branching**

Untuk mengisolasi perubahan-perubahan pada *project*. Terdapat 2 (dua) *branch* yang umum, yaitu Master dan Development. 

Pada Master, merupakan *branch* yang sudah siap untuk di-*publish* tanpa ada kesalahan lagi. *Developer* tidak boleh *commit* dan *push* pada *branch* ini. Sedangkan pada Development, merupakan *branch* yang digunakan untuk melakukan *push* dari para *developer*. 

Langkah-langkah *branching* adalah sebagai berikut.

1. Buat *branch* baru dengan `git branch (nama branch)`.
2. Kemudian, pindah ke *branch* tersebut untuk me-*update* di Remote Repository*.*
3. `git merge`, digunakan untuk menggabungkan isi dari 2 (dua) *branch*. Digunakan juga untuk menggabungkan *branch-branch* ke dalam *branch* utama (Master/Main)
4. `git checkout (nama tujuan)`, digunakan untuk keluar dari *branch* saat ini ke *branch* lain.

</br>

### **Pull Request**

Ketika *branch* utama dipegang oleh Project Leader, maka *developer* yang akan melakukan *push* kode dan *merge* ke dalam *branch* utama dapat menggunakan fitur Pull Request. Project Leader dapat melakukan *review* dan *accepting* sehingga sekaligus akan me-*merge* ke dalam *branch* utama.

Langkah-langkah sebagai *developer* adalah sebagai berikut.

1. Buka Github, kemudian buka menu Pull Request.
2. Pilih *branch* di *field* Compare yang merupakan *branch* yang akan diminta untuk Pull Request ke *branch* utama.
3. Isi *pull request message* dan deskripsinya.
4. Pilih Create Pull Request.

Project Leader dapat melakukan Merge Pull Request ataupun tidak.

</br>

### **Workflow Collaboration**

Merupakan alur dari penggunaan git, baik itu di Github dan yang lainnya. *Workflow collaboration* yang baik adalah dengan memisahkan *branch* utama dengan *branch* untuk pengembangan fitur-fitur.

![Workflow](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/15570442-b201-47ee-99e0-3513d037ba03/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220824%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220824T094906Z&X-Amz-Expires=86400&X-Amz-Signature=a6032f17bf47aa372ae9c33ebe299cfe668b5a8fb299893c220a88891e39c3b6&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)

Lebih baik lagi, dengan memisahkan *branch* utama (untuk *production* dan tidak boleh diubah maupun *push*, hanya *merge* dari *branch develop*), *branch develop* (untuk *developing* dan menggabungkan atau *merge* *pull request*), dan sisanya adalah *branch* untuk pengembangan fitur-fitur.

Atau mungkin, membuat 1 (satu) *branch* lagi sebelum *branch* utama, yaitu *branch* testing.

</br>
</br>

## **Summary**
Tugas yang diberikan pada *section* ini adalah sebagai berikut.

![Tugas Section 3](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/5b631271-df94-44cf-807f-4b12363f6a4a/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220824%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220824T101927Z&X-Amz-Expires=86400&X-Amz-Signature=9b935fc5114cd7057b482673575011e1c471e58cdf94fab8c1fef978472d9177&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)

### **Penjelasan pengerjaan**

(Menyusul setelah *live session*, dengan deadline sesuai jadwal yaitu pada hari Kamis, 25 Agustus 2022)