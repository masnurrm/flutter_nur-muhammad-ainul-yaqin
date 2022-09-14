# **(12) Introduction Flutter Widget**

*File* ini merupakan resume dari materi *section* 12 pada program Flutter. From Zero to Hero dari Alterra Academy pada Studi Independen Bersertifikat Batch 3 tahun 2022.

## **Data Diri**

| Nama                     | Kelas      | Nomor      |
|--------------------------|------------|------------|
| Nur Muhammad Ainul Yaqin | Flutter A  | 20         | 

</br>

Di section 12 (dua belas) ini saya belajar tentang **beberapa *widget* dasar yang harus saya ketahui termasuk cara penggunaannya dalam Flutter.**


> **TL;DR**
> 
> Terdapat 3 (tiga) hal utama yang saya pelajari pada *section* ini sebagai berikut.
>
>1. Mengenai Flutter. Flutter merupakan alat pengembangan antarmuka pengguna yang digunakan untuk membuat aplikasi *mobile*, *desktop*, dan *web*. Flutter memiliki keunggulan, yaitu mudah digunakan dan dipelajari, produktivitas tinggi, dokumentasi lengkap, dan komunitas yang terus berkembang. Satu hal yang unik dari Flutter adalah *widget*-nya. *Widget* dalam Flutter digunakan untuk membentuk antarmuka (UI). *Widget* ini sebenarnya merupakan `class`, dan dapat terdiri dari beberapa *widget* lainnya. Terdapat dua jenis *widget* di dalam Flutter, yaitu *Stateless Widget* dan *Stateful Widget*. 
>2. Mengenai *Stateless* dan *Stateful Widget* di Flutter. *Stateless Widget* merupakan *widget* yang tidak bergantung pada perubahan data. *Widget* ini hanya fokus pada tampilan (statis), dan dibuat dengan `extends` pada *class* `StatelessWidget`. Sedangkan *Stateful Widget* merupakan *widget* yang mementingkan pada perubahan data (dinamis). *Widget* ini dibuat dengan `extends` pada *class* `StatefulWidget`. Dalam *Stateful Widget*, satu *widget* menggunakan 2 *class*, yakni *widget* dan *state*. 
>3. Mengenai *Built in Widget* di Flutter. *Built in Widget* merupakan *widget* yang dapat langsung digunakan karena sudah ter-*install* bersama Flutter. Jenis-jenis *Built in Widget* di Flutter dapat dilihat dalam tautan berikut ([**https://api.flutter.dev/flutter/material/material-library.html](https://api.flutter.dev/flutter/material/material-library.html)).**

</br>

Adapun versi detail resume sebagai berikut.

### **Perkenalan Flutter**

Flutter merupakan alat pengembangan antarmuka pengguna yang digunakan untuk membuat aplikasi *mobile*, *desktop*, dan *web*.

1. **Keunggulan Flutter** 
    
    Keunggulan dari Flutter adalah sebagai berikut.
    
    - Mudah digunakan dan dipelajari
    - Produktivitas tinggi
    - Dokumentasi lengkap
    - Komunitas yang terus berkembang seiring popularitas Flutter

1. **Bagian dari Flutter**
    
    Flutter sendiri terdiri atas SDK (*Software Development Kit*), yang merupakan alat-alat untuk membantu proses pengembangan aplikasi. Flutter juga telah meliputi *framework* yang merupakan perlengkapan untuk membuat aplikasi yang dapat dikustomisasi, *multiplatform*, dan *single-code base*.
    

1. **Membuat Project Flutter**
    
    Pembuatan *project* Flutter dilakukan dengan menjalankan perintah sebagai berikut di terminal.
    
    ```
    flutter create <nama_project>
    ```
    
2. **Menjalankan Project Flutter**
    
    Untuk menjalankan *project* Flutter, maka perlu masuk terlebih dahulu ke direktori *project*, kemudian jalankan perintah sebagai berikut di terminal.
    
    ```
    flutter run
    ```
    

1. **Struktur Direktori Flutter**
    
    Secara *default*, struktur direktori Flutter adalah sebagai berikut.
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/4c7df56b-fe71-4981-997c-39a040c37e37/Untitled.png)
    
    Direktori-direktori tersebut dapat dikategorikan sebagai berikut.
    
    **Direktori *platform*, yang meliputi:**
    
    - **android**
    - **ios**
    - **web**
    
    **Direktori *project*, yang meliputi:**
    
    - **lib** - untuk ruang kerja utama, di mana kode ditulis.
    - **test** - untuk aktivitas pengujian kode yang telah ditulis.
    
2. **FIle Utama Flutter**
    
    Merupakan *file* yang pertama kali dibaca dan dijalankan dan terletak dalam direktori `lib`. File utama tersebut bernama `main.dart`. Pada file tersebut, terdapat fungsi `main` yang menjalankan fungsi `runApp` untuk menjalankan aplikasi.
    
    ```dart
    import 'package:flutter/material.dart';
    
    void main() => runApp(MyApp());
    ```
    

1. **Widget Flutter**
    
    *Widget* dalam Flutter digunakan untuk membentuk antarmuka (UI). *Widget* ini sebenarnya merupakan `class`, dan dapat terdiri dari beberapa *widget* lainnya. Terdapat dua jenis *widget* di dalam Flutter, yaitu *Stateless Widget* dan *Stateful Widget*. Bahasan mengenai dua *widget* ini terdapat pada poin selanjutnya.
    

### **Stateless Widget**

*Stateless Widget* merupakan *widget* yang tidak bergantung pada perubahan data. *Widget* ini hanya fokus pada tampilan (statis), dan dibuat dengan `extends` pada *class* `StatelessWidget`. Contoh dari penggunaan *Stateless* *Widget* adalah sebagai berikut dengan nama `MyWidget`.

```dart
class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(child: Text('Selamat Datang di Flutter')),
      ),
    );
  }
}
```

### **Stateful Widget**

*Stateful Widget* merupakan *widget* yang mementingkan pada perubahan data (dinamis). *Widget* ini dibuat dengan `extends` pada *class* `StatefulWidget`. Dalam *Stateful Widget*, satu *widget* menggunakan 2 *class*, yakni *widget* dan *state*. Contoh dari penggunaan *Stateful Widget* adalah sebagai berikut dengan nama `MyWidget` dan `MyWidgetState`.

```dart
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => MyWidgetState();
}

class MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(child: Text('Selamat Datang di Flutter')),
      )
    );
  }
}
```

### **Built in Widget**

*Built in Widget* merupakan *widget* yang dapat langsung digunakan karena sudah ter-*install* bersama Flutter. Jenis-jenis *Built in Widget* di Flutter dapat dilihat dalam tautan berikut.

[**https://api.flutter.dev/flutter/material/material-library.html**](https://api.flutter.dev/flutter/material/material-library.html)

Beberapa contohnya ditunjukkan sebagai berikut.

1. **MaterialApp**
    
    `MaterialApp()` digunakan untuk membangun aplikasi dengan menggunakan desain material yang telah tersedia di Flutter.
    
    ```dart
    const MaterialApp(
    	home: Text('Selamat datang di Flutter'),
    );
    ```
    
2. **Scaffold**
    
    `Scaffold()` digunakan untuk membentuk sebuah halaman. Contoh penggunaannya adalah sebagai berikut.
    
    ```dart
    const Scaffold(
    	body: Text('Selamat datang di Flutter'),
    );
    ```
    
3. **AppBar**
    
    `AppBar()` digunakan untuk membentuk *application bar* yang terletak pada bagian atas halaman. Contoh penggunaannya adalah sebagai berikut.
    
    ```dart
    AppBar(
    	tittle: const Text('Home'),
    );
    ```
    
4. **Text**
    
    `Text()` digunakan untuk menampilkan teks di layar. Contoh penggunaannya adalah sebagai berikut.
    
    ```dart
    const Text('haloo...');
    ```
    

Contoh penggunaan dari semua *Built in Widget* tersebut adalah sebagai berikut.

```dart
@override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: const Text('Selamat datang di Flutter'),
      ),
    );
  }
```
