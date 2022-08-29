# **(4) Introduction to Algorithm and Dart Programming**

*File* ini merupakan resume dari materi *section* 5 pada program Flutter. From Zero to Hero dari Alterra Academy pada Studi Independen Bersertifikat Batch 3 tahun 2022.

## **Data Diri**

| Nama                     | Kelas      | Nomor      |
|--------------------------|------------|------------|
| Nur Muhammad Ainul Yaqin | Flutter A  | 20         | 

</br>

## **Summary**
Di section 5 (lima) ini saya belajar tentang **pengenalan bahasa pemrograman Dart.**

> **TL;DR**
> 
> Terdapat 3 (tiga) hal utama yang saya pelajari pada *section* ini sebagai berikut.
>
>1. Mengenai fitur bahasa pemrograman Dart. Bahasa pemrograman Dart sendiri sebenarnya sama dengan bahasa pemrograman lain. Namun, terdapat beberapa fitur yang menjadi unggulan dari bahasa pemrograman Dart, yaitu memiliki fitur *Type Safe* (konsistensi tipe data), *Null Safety* (keamanan untuk variabel yang bernilai *NULL*), *Rich Standart Library* (banyak dukungan *library* internal atau bawaan), serta *Multiplatform* (dapat berjalan pada berbagai jenis perangkat).
>2. Mengenai struktur kode Dart. Kode dengan bahasa pemrograman Dart dieksekusi mulai dari fungsi yang bernama fungsi `main`. Fungsi ini sendiri tidak mengembalikan nilai apa-apa (*void*).
>3. Mengenai pengenalan praktik penggunaan bahasa pemrograman Dart. Praktik pada *section* ini berkaitan dengan penggunaan komentar, variabel, tipe data, dan operator. Di *section* ini juga dijelaskan beberapa kondisi unik, seperti jenis variabel konstanta pada saat penjelasan mengenai variabel.

</br>

Adapun versi detail resume sebagai berikut.

### **Apa dan Mengapa Dart?**
Dart adalah bahasa pemrograman yang dirancang untuk membuat aplikasi agar dapat berjalan dengan cepat serta juga dapat dikembangkan dengan cepat. Bahasa pemrograman Dart sendiri dikembangkan oleh Google untuk mengatasi masalah-masalah yang kerap dihadapi oleh bahasa pemrograman saat ini, misalnya JavaScript. Aplikasi yang dibuat dengan bahasa pemrograman Dart adalah aplikasi yang berjalan di sisi *client* (*frontend*), seperti:

1. *Web* (yang sekarang masih kerap menggunakan bahasa pemrograman Javascript),
2. *Desktop*, dan
3. *Mobile*.

Dart memiliki kesamaan dengan bahasa pemrograman lain. Bahasa pemrograman Dart memiliki fitur-fitur sebagai berikut.

1. *Type Safe*, yaitu menjamin konsistensi tipe data.
2. *Null Safety*, yaitu memberi keamanan dari data bernilai hampa (*NULL*).
3. *Rich Standart Library*, yaitu bahasa pemrograman Dart hadir dengan banyak dukungan *library* internal atau bawaan.
4. *Multiplatform*, yaitu aplikasi yang dikembangkan dengan bahasa pemrograman Dart (dengan menggunakan *framework* Flutter) mampu berjalan pada berbagai jenis perangkat.

</br>

## **Dasar Pemrograman Dart**

Terdapat beberapa hal yang harus diperhatikan dalam mempelajari dasar dari bahasa pemrograman Dart sebagai berikut.

1. **Fungsi `Main`**
    
    Fungsi `main` merupakan bagian yang pertama kali dijalankan dalam *source code* dari pemrograman Dart. Fungsi ini harus memiliki nama `main` dapat memiliki tipe data `void` maupun `int`. Pada fungsi ini, berbagai *syntax,* perintah, prosedur, maupun fungsi sudah dapat diterapkan di dalamnya. Sebagai contoh, perintah `print()` digunakan untuk menampilkan data ke layar.
    
2. **Komentar**
    
    Komentar merupakan bagian dari *source code* yang berupa satu atau beberapa baris kode yang tidak dijalankan dengan tujuan untuk memberi catatan pada kode dan juga dapat untuk mencegah perintah untuk dijalankan. Cara untuk menulis atau membuat suatu baris kode menjadi komentar terdapat dua cara sebagai berikut.
    
    1. Diawali dengan tanda garis miring 2 kali. Cara ini digunakan untuk membuat satu baris kode menjadi komentar.
    2. Diawali dengan tanda garais miring dan bintang (/*) serta diakhiri dengan tanda bintang dan garis miring (*/). Cara ini digunakan untuk membuat beberapa baris kode sekaligus menjadi komentar.

1. **Variabel**
    
    *Variabel* digunakan untuk menyimpan data atau *value*. *Variabel* harus memiliki nama yang dapat dipanggil dan digunakan untuk kebutuhan selanjutnya. Selain itu, *variabel* juga harus memiliki tipe data yang spesifik (dibahas pada poin nomor 4).
    
    Dalam penggunaannya, *variabel* harus dideklarasikan terlebih dahulu. Deklarasi *variabel* dilakukan dengan menentukan tipe data dari *variabel* tersebut kemudian diikuti dengan nama *variabel*-nya. 
    
    > Deklarasi *variabel* juga dapat dilakukan dengan menggunakan tipe data `var` dan diikuti dengan nama *variabel*. Secara otomatis, tipe data *variabel* tersebut adalah *NULL.*
    
    Setelah dideklarasikan, *variabel* tentu perlu diberi nilai atau *value*. Memberi nilai pada *variabel* dilakukan dengan menggunakan tanda sama dengan atau *assignment* (`=`). Selain itu, pemberian nilai pada suatu *variabel* dapat juga dilakukan langsung bersamaan saat deklarasi. Cara ini disebut dengan inisiasi *variabel*.
    
    Dalam bahasan mengenai *variabel*, terdapat suatu jenis *variabel* yang disebut sebagai konstanta. Konstanta adalah *variabel* yang sama seperti umumnya, namun nilai atau *value*-nya tetap dan tidak dapat diubah. Sehingga, konstanta hanya dapat diinisiasi atau diberi nilai di awal tanpa dapat diubah selanjutnya. Untuk membuat konstanta, maka perlu menggunakan tipe data `final` yang diikuti dengan nama *variabel* konstantanya dan dapat diberikan nilai atau *value* secara langsung.
    
2. **Tipe Data**
    
    Tipe data sendiri merupakan pendefinisian suatu data yang dapat dimiliki oleh suatu variabel agar dapat dikelola. Bahasa pemrograman Dart sendiri memiliki tipe data sederhana yang kerap disebut sebagai *primitive data type*. Jenis tipe data tersebut antara lain sebagai berikut.
    
    1. Int (bilangan bulat)
        
        Tipe data `int` menggantikan `var` dengan ketentuan data harus berupa bilangan bulat.
        
    2. Double (bilangan pecahan)
        
        Tipe data `double` menggantikan `var` dengan ketentuan data harus berupa bilangan pecahan (desimal). Penulisan pecahan sendiri harus menggunakan tanda titik, bukan tanda koma.
        
    3. Bool (boolean berupa true atau false)
        
        Tipe data `bool` menggantikan `var` dengan ketentuan data harus berupa pilihan `true` atau `false` saja.
        
    4. String (teks)
        
        Tipe data `string` menggantikan `var` dengan ketentuan data harus berupa teks atau *array of char*. Penulisan teks pada tipe data `string` harus diawali dan diakhiri dengan tanda kutip.
        
3. **Operator**
    
    *Operator* digunakan untuk melakukan operasi dalam pengolahan data dalam suatu variabel. Data yang dikelola oleh *operator* disebut sebagai `operand`. Terdapat beberapa jenis dari operator dalam bahasa pemrograman Dart sebagai berikut.
    
    1. *Arithmetic*
        
        Operator *arithmetic* digunakan untuk perhitungan matematis atau aritmatika. Operator ini meliputi tanda `+`, `-`, `*`, `/`, dan `%` (modulo).
        
    2. *Assignment*
        
        Operator *assignment* digunakan untuk memberi nilai pada suatu variabel. Operator ini meliputi tanda `=`, `+=`, `-=`, `*=`, `/=`, dan `%=`.
        
    3. *Comparison*
        
        Operator *comparison* digunakan untuk membandingkan kesetaraan nilai antara dua variabel. Operator ini meliputi tanda `==`, `<`, `<=`, `>`, dan `>=`.
        
    4. *Logical*
        
        Operator *logical* digunakan untuk menggabungkan beberapa kondisi secara diskrit. Operator ini meliputi tanda `&&` (dan), `||` (atau), serta `!` (tidak atau bukan).