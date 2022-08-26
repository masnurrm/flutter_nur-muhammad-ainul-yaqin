# **(4) Introduction Mobile App Development**

*File* ini merupakan resume dari materi *section* 4 pada program Flutter. From Zero to Hero dari Alterra Academy pada Studi Independen Bersertifikat Batch 3 tahun 2022.


## **Data Diri**

| Nama                     | Kelas      | Nomor      |
|--------------------------|------------|------------|
| Nur Muhammad Ainul Yaqin | Flutter A  | 20         | 

</br>

## **Summary**
Di section 3 (tiga) ini saya belajar tentang **pengertian dari pengembangan Mobile App**.

> **TL;DR**
> 
> Terdapat 3 (tiga) hal utama yang saya pelajari pada *section* ini sebagai berikut.
>
>1. Mengenai *software* *development*. *Software* *development* sendiri merupakan suatu proses pengembangan aplikasi yang berjalan pada perangkat *mobile*. Prosesnya dimulai dari desain, pembuatan, *testing*, hingga peluncuran aplikasi. Jenis *software* terbagi dalam *web*, *software* *desktop*, dan *software* *mobile*.
>2. Mengenai proses pengembangan *software*. Pada bagian ini, dapat diketahui bahwa terdapat beberapa proses yang terlihat dan tidak terlihat oleh *software* *developer*. Proses yang tidak terlihat sendiri adalah proses *compiling* oleh *compiler* ataupun proses yang dilakukan oleh *interpreter* (sesuai bahasa pemrograman yang digunakan) untuk menghasilkan perintah yang dapat dimengerti mesin dan menghasilkan *output* yang diinginkan.
>3. Mengenai jenis *mobile* *app* *development*. *Mobile* *app* *development* sendiri terbagi menjadi 3 (tiga) ranah sesuai sistem operasi yang digunakan, yaitu iOS, Android, atau keduanya (*cross* *platform*). Pengembangan *cross* *platform* *mobile* *app* sendiri salah satunya menggunakan bahasa Dart dengan *framework* Flutter.

</br>

Adapun versi detail resume sebagai berikut.

### **Mobile App Development**

Merupakan suatu proses pengembangan aplikasi yang berjalan pada perangkat *mobile*. Prosesnya dimulai dari desain, pembuatan, *testing*, hingga peluncuran aplikasi. Saat ini banyak aplikasi *mobile*, seperti *banking*, kesehatan, musik, produktivitas, dan lainnya.

Orang yang melakukan proses pengembangan aplikasi *mobile* dikenal sebagai Mobile App Developer yang juga merupakan bagian dari Software Development.

</br>

## **Pengertian Software**

*Software* merupakan perangkat lunak yang tersimpan dan dapat dikendalikan pada sistem komputer. *Software* terbentuk dari perintah-perintah yang berfungsi sesuai kemauan pembuatnya dan tidak memiliki bentuk fisik.

</br>

## **Jenis Software**

Beberapa jenis *software* saat ini adalah sebagai berikut.

1. **Web**
    1. *Software* yang dapat diakses menggunakan *web browser*.
    2. Memerlukan internet untuk membukanya.
    3. Contoh dari *web* antara lain adalah YouTube.com, Kompas.com, dan sebagainya.
2. **Desktop**
    1. Software yang berjalan pada perangkat desktop.
    2. Umumnya perlu langkah instalasi sebelum dijalankan atau digunakan.
    3. Sebagian *software desktop* saat ini juga dapat dibuka tanpa memerlukan internet.
    4. Contoh dari *software* *desktop* antara lain adalah Adobe Photoshop, Microsoft Office, dan sebagainya.
3. **Mobile**
    1. *Software* yang berjalan pada perangkat *mobile* (*smartphone* atau *tablet*).
    2. Umumnya perlu langkah instalasi sebelum dijalankan atau digunakan.
    3. Instalasi dapat dilakukan melalui *store* penyedia *software*.
    4. Sebagian *software mobile* saat ini juga dapat dibuka tanpa memerlukan internet.
    5. Contoh dari *software mobile* antara lain adalah Instagram, TikTok, dan sebagainya.

</br>

## **Pengembangan Software**

*Software development* sendiri menggunakan bahasa pemrograman dalam prosesnya. Bahasa pemrograman adalah rangkaian teks yang digunakan untuk memberi perintah kepada komputer. Contoh bahasa pemrograman adalah Python, Javascript, C++, Ruby, Java, PHP, dan masih banyak lagi. Bahasa pemrograman banyak dan beragam karena untuk memenuhi kebutuhan *software developer* yang juga berbeda-beda. 

Pemrograman yang telah dibuat akan menghasilkan *source code* yang perlu diterjemahkan ke dalam bahasa mesin. Ada dua cara untuk melakukannya sebagai berikut.

1. **Compiler**
    
    *Software* yang digunakan untuk membaca perintah-perintah dalam bahasa pemrograman dan mengubahnya ke bahasa lain, biasanya ke dalam bentuk yang dikenali oleh komputer, seperti *machine code* (kumpulan intruksi yang hanya dikenali oleh mesin).

    ![Compiler](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/221dceb5-1b9f-430d-8fa8-1da2af463616/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220826%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220826T022909Z&X-Amz-Expires=86400&X-Amz-Signature=760b20bae410093f0e69f889b7fcd8e3becb1f3428239cc988308c08e7418c93&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)

    Proses compile dimulai dari kumpulan perintah kode (source code) yang dibuat dengan bahasa pemrograman tertentu  akan dikompilasi agar dapat dimengerti oleh mesin. Setelah itu, akan dihasilkan file executable (.exe) yang dapat dimengerti mesin sehingga dapat menghasilkan output sesuai yang diinginkan.

2. **Interpreter**
    
    *Software* yang digunakan untuk membaca perintah-perintah dalam bahasa pemrograman dan menjalankan langsung perintah-perintah tersebut.

    ![Interpreter](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/6f64402d-583d-4b68-a956-c278e293efd2/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220826%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220826T022905Z&X-Amz-Expires=86400&X-Amz-Signature=32396bca859217ddbd381afd8b2f898a89abfca61532f10e8d607addd9b4dfb3&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)

    Proses interpreter dimulai dari kumpulan perintah kode (source code) yang dibuat dengan bahasa pemrograman tertentu   akan diduplikat lalu hasilnya akan diterjemahkan oleh interpreter. Ketika interpreter dijalankan, maka akan diterjemahkan tiap barisnya dan menghasilkan output yang diinginkan.

Secara alur proses, interpreter lebih singkat dan cepat daripada compiler. Namun, terdapat beberapa poin penting yang membuat compiler tetap populer. Berikut tabel perbedaan antara compiler dan interpreter.

| Compiler                    | Interpreter      |
|--------------------------|------------|
| Mengubah kode menjadi file yang dapat dijalankan | Membaca kode tanpa mengubah ke bentuk lain  |
| Prosesnya lebih panjang | Prosesnya lebih singkat |
| Program dapat dijalankan dengan cepat karena tidak membaca ulang kode | Seringkali lebih lambat karena harus membaca ulang keseluruhan kode |

Kedua hal tersebut dilakukan secara otomatis oleh bahasa pemrograman yang digunakan masing-masing. Sehingga, *software* *developer* tidak perlu bertanggung jawab dan memikirkannya.

</br>

## **Mobile App Development**

Merupakan proses pengembangan aplikasi untuk perangkat *mobile*. Beberapa jenis *mobile app development* saat ini terbagi sesuai dengan *platform* berjalannya aplikasi itu sendiri, antara lain sebagai berikut.

1. **iOS**
    1. Berjalan pada sistem operasi iOS
    2. Perangkat hanya dikembangkan oleh Apple
    3. Bahasa pemrograman yang didukung secara *native* antara lain Swift dan Objective C
2. **Android**
    1. Berjalan pada sistem operasi Android
    2. Perangkat berkembang luas karena bersifat *open*-*source*
    3. Bahasa pemrograman yang didukung secara *native* antara lain Kotlin dan Java
3. ***Cross Platform***
    
    Aplikasi *cross platform* merupakan aplikasi yang dapat berjalan pada sistem operasi iOS maupun Android dengan satu *source code* saja (*single code base*). Salah satu bahasa pemrograman yang mendukung hal tersebut adalah Dart (*framework* Flutter).

    ![Cross Platform](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/41fb5706-45ac-4484-9d4e-9424b95ef248/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220826%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220826T022902Z&X-Amz-Expires=86400&X-Amz-Signature=aeb9b46628d16b18dc23f9778e14493b6e9e9b92054c849994299069a66e35ea&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)

    Tahapan pemrograman dimulai dengan membuat source code dengan menggunakan bahasa Dart dan framework Flutter. Dart memiliki sebuah virtual machine yang akan melakukan compiling ke dalam bahasa mesin, yaitu .apk untuk Android, dan .ipa untuk iOS. Dengan itu, dapat dihasilkan output yang memiliki kemampuan sama seperti bahasa native.