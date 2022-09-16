# **(13) Platform Widget**

*File* ini merupakan resume dari materi *section* 13 pada program Flutter. From Zero to Hero dari Alterra Academy pada Studi Independen Bersertifikat Batch 3 tahun 2022.

## **Data Diri**

| Nama                     | Kelas      | Nomor      |
|--------------------------|------------|------------|
| Nur Muhammad Ainul Yaqin | Flutter A  | 20         | 

</br>

Di section 13 (tiga belas) ini saya belajar tentang ***widget*-*widget* yang khusus digunakan untuk membuat tampilan pada *platform* Android dan iOS.**


> **TL;DR**
> 
> Terdapat 3 (tiga) hal utama yang saya pelajari pada *section* ini sebagai berikut.
>
>1. Mengenai Platform Widget. Penggunaan *widget* pada platform Android dan iOS harus memiliki *widget* pengemas yang berbeda, yaitu `MaterialApp` untuk Android, dan `CupertinoApp` untuk iOS.
>2. Mengenai Material App. `MaterialApp` merupakan *widget* dasar yang mengemas seluruh *widget* dalam suatu aplikasi yang berjalan pada sistem operasi Android. `MaterialApp` digunakan dengan melakukan *import* dari `package:flutter/material.dart`. `Scaffold` merupakan *widget* dasar untuk membangun sebuah halaman pada `MaterialApp`. Penggunaan `Scaffold` sendiri membentuk tata letah dasar sebuah halaman yang ditulis melalui properti-properti.
>3. Mengenai Cupertino App. `CupertinoApp` merupakan *widget* dasar yang mengemas seluruh *widget* dalam aplikasi yang berjalan pada sistem operasi iOS. `CupertinoApp` digunakan dengan melakukan *import* dari `package:flutter/cupertino.dart`. `CupertinoPageScaffold` merupakan *widget* dasar untuk membangun sebuah halaman pada `CupertinoApp`. Penggunaan `CupertinoPageScaffold` sendiri membentuk tata letah dasar sebuah halaman yang ditulis melalui properti-properti.

</br>

Adapun versi detail resume sebagai berikut.

### **Flutter Platform Widget**

Topik bahasan pada *section* ini adalah tentang bagaimana memanfaatkan *widget* dengan gaya yang berbeda pada sistem operasi **Android dan iOS. Singkatnya, untuk sistem operasi Android dapat menggunakan `MaterialApp`, sedangkan iOS dapat menggunakan `CupertinoApp`. 

</br>

### **Material App**

`MaterialApp` merupakan *widget* dasar yang mengemas seluruh *widget* dalam suatu aplikasi yang berjalan pada sistem operasi Android. `MaterialApp` digunakan dengan melakukan *import* dari `package:flutter/material.dart`.

**Struktur**

Pada `MaterialApp`, *widget* yang pertama kali dibuka, diletakkan pada bagian `home`. Contoh implementasi sebagai berikut.

```dart
MaterialApp(
	theme: ThemeData.dark(), // Mengatur tema aplikasi
	home: const HomePage(), // Mengatur halaman utama
);
```

Selain itu, mengatur halaman utama juga dapat dilakukan dengan menggunakan `routes` dan `initialRoute`. Contoh implementasi sebagai berikut.

```dart
MaterialApp(
	theme: ThemeData.dark(), // Mengatur tema aplikasi
	initialRoute: 'home', // Route utama
	routes: {
		'home': (_) => const HomePage(), // Mendaftarkan halaman pada routes
	},
);
```

</br>

**Scaffold**

`Scaffold` merupakan *widget* dasar untuk membangun sebuah halaman pada `MaterialApp`.

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/85f52e0e-c0f2-4cc0-af80-d6c885d93509/Untitled.png)

Penggunaan `Scaffold` sendiri membentuk tata letah dasar sebuah halaman yang ditulis melalui properti-properti. Contoh dari struktur `Scaffold` adalah sebagai berikut.

```dart
Scaffold(
	appBar: AppBar(...), // Bar menu bagian atas halaman
	drawer: Drawer(...), // Menu bagian samping halaman (sidebar)
	body: ..., // Bagian utama halaman
	bottomNavigationBar: BottomNavigationBar(...), // Menu bagian bawah halaman
);
```

### **Cupertino App**

`CupertinoApp` merupakan *widget* dasar yang mengemas seluruh *widget* dalam aplikasi yang berjalan pada sistem operasi iOS. `CupertinoApp` digunakan dengan melakukan *import* dari `package:flutter/cupertino.dart`.

**Struktur**

Pada `CupertinoApp`, variabel `_themeDark` dibuat untuk menyimpan tema. Hal ini penting dilakukan karena `CupertinoApp` tidak menyediakan `ThemeData.dark()` seperti pada `MaterialApp`. Contoh implementasi sebagai berikut.

```dart
final _themeDark = const CupertinoThemeData.raw( // Membuat dasar tema
	Brightness.dark, // Mengatur brightness tema menjadi dark
	null,
	null,
	null,
	null,
	null,
);
```

*Widget* yang pertama kali dibuka, diletakkan pada bagian `home`. Contoh implementasi sebagai berikut.

```dart
CupertinoApp(
	theme: _themeDark, // Mengatur tema aplikasi
	home: const HomePage(), // Halaman utama
);
```

</br>

**Cupertino Page Scaffold**

`CupertinoPageScaffold` merupakan *widget* dasar untuk membangun sebuah halaman pada `CupertinoApp`. 

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/eae1fb4c-a854-4872-9213-67b1aac8ec42/Untitled.png)

Penggunaan `CupertinoPageScaffold` sendiri membentuk tata letah dasar sebuah halaman yang ditulis melalui properti-properti. Contoh dari struktur `CupertinoPageScaffold` adalah sebagai berikut.

```dart
CupertinoPageScaffold(
	navigationBar: CupertinoNavigationBar(...), // Bar menu bagian atas halaman
child: ..., // Bagian utama halaman
);
```
