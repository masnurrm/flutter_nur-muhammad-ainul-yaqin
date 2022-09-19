# **(14) Flutter Command Line Interface (CLI) and Flutter Package Management**

*File* ini merupakan resume dari materi *section* 14 pada program Flutter. From Zero to Hero dari Alterra Academy pada Studi Independen Bersertifikat Batch 3 tahun 2022.

## **Data Diri**

| Nama                     | Kelas      | Nomor      |
|--------------------------|------------|------------|
| Nur Muhammad Ainul Yaqin | Flutter A  | 20         | 

</br>

Di section 14 (empat belas) ini saya belajar tentang **beberapa *command line* dan *package management* pada Flutter.**


> **TL;DR**
> 
> Terdapat 3 (tiga) hal utama yang saya pelajari pada *section* ini sebagai berikut.
>
>1. Mengenai Flutter CLI. *Command Line Interface*, atau yang biasa disebut dengan CLI adalah alat yang digunakan untuk berinteraksi dengan Flutter SDK (*Software Development Kit*). CLI merupakan perintah yang dijalankan di dalam terminal.
>2. Mengenai *command* *line* penting untuk *project* Flutter. Beberapa di antaranya adalah Flutter Doctor, Flutter Create, Flutter Run, Flutter Emulator, Flutter Run, Flutter Channel, Flutter Pub, Flutter Build, dan Flutter Clean.
>3. Mengenai cara mencari, mendapatkan, dan menggunakan *shared packages* dari `[pub.dev](http://pub.dev)` pada *project* yang dibuat. Singkatnya, cari *package* di `pub.dev`. Kemudian, c*opy* baris *dependencies* yang ada di bagian *installing*. Lalu, buka `pubspec.yaml` pada *project* Flutter yang dibuat. *Paste* baris dibawah *dependencies* `pubspec.yaml`. *Run* perintah `flutter pub get` di terminal atau klik tombol `CTRL + S`. Terakhir, *import package* di *file* dart agar bisa digunakan dan sesuaikan dengan kebutuhan.

</br>

Adapun versi detail resume sebagai berikut.

### **Flutter CLI**

*Command Line Interface*, atau yang biasa disebut dengan CLI adalah alat yang digunakan untuk berinteraksi dengan Flutter SDK (*Software Development Kit*). CLI merupakan perintah yang dijalankan di dalam terminal.

</br>

### **Important CLI Commands**

Terdapat beberapa *Command Line* yang penting yaitu sebagai berikut.

1. **Flutter Doctor**
    
    Flutter Doctor merupakan perintah untuk menampilkan informasi *software* yang dibutuhkan oleh Flutter. *Command* ini dijalankan dengan mengetikkan `flutter doctor` di terminal.
    
2. **Flutter Create**
    
    Flutter Create merupakan perintah untuk membuat *project* aplikasi Flutter baru di *directory* tertentu. *Command* ini dijalankan dengan mengetikkan `flutter create <APP_NAME>` di terminal.
    
3. **Flutter Run**
    
    Flutter Run merupakan perintah untuk menjalankan *project* aplikasi di *device* yang tersedia. *Command* ini dijalankan dengan mengetikkan `flutter run <DART_FILE>` di terminal.
    
4. **Flutter Emulator**
    
    Flutter Emulator merupakan perintah untuk menampilkan daftar emulator yang ter-*install* dan menampilkan opsi untuk membuka emulator atau membuat emulator baru. *Command* ini dijalankan di terminal dengan mengetikkan perintah-perintah berikut, antara lain perintah `flutter emulators` untuk melihat apa saja emulator yang siap saat ini, perintah `flutter emulator --launch <EMULATOR_ID>` untuk menjalankan emulator yang siap dan terpilih, serta perintah `flutter emulators --create [--name xyz]` untuk membuat emulator baru
    
5. **Flutter Channel**
    
    Flutter Channel merupakan perintah untuk menampilkan daftar Flutter *channel* yang tersedia dan menunjukkan *channel* yang digunakan saat ini. *Command* ini dijalankan dengan mengetikkan `flutter channel` di terminal.
    
6. **Flutter Pub**
    
    Flutter Pub merupakan perintah untuk mengunduh *package* yang dibutuhkan pada *project* yang sedang dikerjakan. Terdapat dua *syntax* yang bisa digunakan sebagai berikut.
    
    1. **Flutter pub add**, untuk menambahkan suatu *packages* yang spesifik ke *dependencies* yang ada di `pubspec.yaml`. *Command* ini dijalankan dengan mengetikkan `flutter pub add <package_name>` di terminal.
    2. **Flutter pub get***,* untuk mengunduh semua *packages* atau *dependencies* yang ada di `pubspec.yaml`. *Command* ini dijalankan dengan mengetikkan `flutter pub get` di terminal.
7. **Flutter Build**
    
    Flutter Build merupakan perintah untuk memproduksi sebuah *file* aplikasi untuk keperluan *deploy* atau *publish* ke Appstore, Playstore, dan sebagainya. *Command* ini dijalankan dengan mengetikkan `flutter build <DIRECTORY>` di terminal.
    
8. **Flutter Clean**
    
    Flutter Clean merupakan perintah untuk menghapus folder *build* serta file lainnya yang dihasilkan saat kita menjalankan aplikasi di emulator. Perintah ini akan memperkecil ukuran *project*. *Command* ini dijalankan dengan mengetikkan `flutter clean` di terminal.
    
</br>

### **Packages Management**

Flutter mendukung *sharing packages*, yang mana merupakan *packages* yang dibuat oleh *developer* lain. Adanya *sharing packages* mempercepat pengembangan aplikasi karena tidak perlu membuat semuanya dari awal atau *from scratch*. *Packages* tersebut bisa didapatkan di *website* `pub.dev`.

Penambahan *packages* dapat dilakukan sebagai berikut.

1. Cari *package* di `pub.dev`. Sebagai contoh, menambahkan *package* Percent Indicator.
2. *Copy* baris *dependencies* yang ada di bagian *installing*.
3. Buka `pubspec.yaml`.
4. *Paste* baris dibawah *dependencies* `pubspec.yaml`.
5. *Run* perintah `flutter pub get` di terminal atau klik tombol `CTRL + S`.
6. *Import package* di *file* dart agar bisa digunakan.
7. *Stop* atau *restart* aplikasi jika dibutuhkan.

Dengan *packages* yang telah tersedia di `pub.dev`, hanya dibutuhkan beberapa baris kode untuk menghasilkan UI yang kompleks karena hanya tinggal menyesuaikan *packages* tersebut dengan kebutuhan.