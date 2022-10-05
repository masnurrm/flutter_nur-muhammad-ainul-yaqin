# **(22) Flutter State Management (BLoC)**

*File* ini merupakan resume dari materi *section* 22 pada program Flutter. From Zero to Hero dari Alterra Academy pada Studi Independen Bersertifikat Batch 3 tahun 2022.

## **Data Diri**

| Nama                     | Kelas      | Nomor      |
|--------------------------|------------|------------|
| Nur Muhammad Ainul Yaqin | Flutter A  | 20         | 

</br>

Di section 22 (dua puluh dua) ini saya belajar tentang ***state management* pada Flutter serta pengenalan *state* `BLoC`.**

> **TL;DR**
> 
> Terdapat 3 (tiga) hal utama yang saya pelajari pada *section* ini sebagai berikut.
>
>1. Mengenai *state* pada Flutter. *State* merupakan data yang dibaca saat awal pembuatan widget. *State* hanya dapat berubah saat *widget* sedang aktif dan hanya dimiliki oleh `StatefulWidget`. Salah satu *state* terdapat pada Flutter adalah *global state*.
>2. Mengenai *global state* pada Flutter. Seperti yang telah disinggung sebelumnya, *global state* merupakan *state* biasa yang dapat digunakan pada seluruh *widget*. Salah satu *global state* yang umum digunakan pada Flutter adalah `BLoC`. 
>3. Mengenai *state* `BLoC` **pada Flutter. `BLoC` merupakan salah satu *global state* atau *state management* yang terdapat pada Flutter. *State management* ini perlu di-*install* agar dapat digunakan. Instalasi Provider dilakukan dengan menambah *package* `BLoC` pada bagian *dependencies* dalam file `pubspec.yaml`. Kemudian, dapat dijalankan perintah `flutter pub get`.

</br>

Adapun versi detail resume sebagai berikut.

### **BLoC**

State management BLoC (Business Logic Component) merupakan state management yang memisahkan antara business logic dengan UI (user interface). State management BLoC mirip dengan MVC pada pengembangan website.

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/de4066ef-fc33-4721-9c96-716e9fcc87cc/Untitled.png)

Terdapat beberapa kelebihan dari state management BLoC, beberapa di antaranya adalah sebagai berikut.

1. Simple
2. Powerful
3. Testable

**Cara Kerja BLoC**

State management BLoC bekerja dengan menerima event sebagai input yang kemudian dianalisa dan dikelola di dalam BLoC. Selanjutnya, akan dihasilkan state yang juga merupakan output dari BLoC.

**Stream**

Stream merupakan proses yang dilakukan asynchronous yang merupakan aktor atau proses utama di dalam state management BLoC.

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/ebdebe0b-75c1-4d9d-86af-1b5780c21e3c/Untitled.png)

### **Latihan Project BLoC**

Salah satu latihan yang dapat dilakukan adalah dengan membuat counter app dengan pendekatan state management BLoC.

**Step 1: Install Package**

Package yang perlu di-install adalah flutter_bloc agar dapat menggunakan kode BLoC serta equatable untuk mencegah rebuilds yang tidak dibutuhkan.

```yaml
dependencies:
	flutter:
		sdk: flutter
	flutter_bloc: ^8.0.1
	equatable: ^2.0.3 
```

**Step 2: Membuat Folder BLoC**

Hal yang perlu dilakukan adalah membuat 3 file dart baru, yaitu counter_bloc.dart, counter_event.dart, dan counter_state.dart. Folder-folder tersebut dapat dibuat secara manual atau dengan menggunakan extensions di code editor, yaitu bloc.

**Step 3: Menambahkan Event**

Tambahkan event di counter_event.dart

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/3ef18710-f2fc-450e-97cf-20c332177129/Untitled.png)

**Step 4: Menambahkan State**

Tambahkan state untuk menyimpan nilai counter di counter_state.dart

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/17f81552-af78-49b1-a1e8-b6966d2d24d4/Untitled.png)

**Step 5: Menambahkan Logika Bisnis**

Tambahkan logika bisnis di counter_bloc.dart dengan menggunakan fungsi emit untuk mengirim state terbaru.

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/78cab2cb-a03b-4c9d-bc02-1b696d57c788/Untitled.png)

**Step 6: Menambahkan BlocProvider**

Tambahkan BlocProvider di main.dart

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/8a173de3-eb75-4cf4-9628-ba3a664746ed/Untitled.png)

**Step 7: Membangun UI**

Bual folder baru di screens, di dalamnya buat file dart baru bernama home_page.dart

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/d793f9d6-31a3-4517-a468-2049f1967dfa/Untitled.png)

**Step 8: Menambahkan BlocBuilder**

Tambahkan BlocBuilder di home_page.dart

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/b3311afe-97a3-4684-8d9f-73b7bc023692/Untitled.png)

**Step 9: Mengganti Text**

Menampilkan nilai terbaru yang dimiliki state.

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/69a3a3ae-0645-4a44-a529-973e4f4a2da5/Untitled.png)

**Step 10: Menambahkan context.read**

Tambahkan [context.read](http://context.read) pada fungsi onPressed ElevatedButton.

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/24543fc1-f00b-4218-aaa9-356e559c07fe/Untitled.png)