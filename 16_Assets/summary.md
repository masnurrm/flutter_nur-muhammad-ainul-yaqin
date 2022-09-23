# **(16) Flutter Command Line Interface (CLI) and Flutter Package Management**

*File* ini merupakan resume dari materi *section* 16 pada program Flutter. From Zero to Hero dari Alterra Academy pada Studi Independen Bersertifikat Batch 3 tahun 2022.

## **Data Diri**

| Nama                     | Kelas      | Nomor      |
|--------------------------|------------|------------|
| Nur Muhammad Ainul Yaqin | Flutter A  | 20         | 

</br>

Di section 16 (enam belas) ini saya belajar tentang **jenis *assets* yang dapat digunakan dalam *project* aplikasi Flutter beserta bagaimana cara penggunaan serta *best practice*-nya.**


> **TL;DR**
> 
> Terdapat 3 (tiga) hal utama yang saya pelajari pada *section* ini sebagai berikut.
>
>1. Mengenai *assets* pada Flutter. *Assets* merupakan file yang di-*bundled* dan di-*deployed* bersamaan dengan aplikasi. Sebelum menggunakan *assets* tertentu di Flutter, perlu dilakukan beberapa penambahan *dependencies* pada `pubspec.yaml`. *File* `pubspec.yaml` terletak pada *root project*, yang berfungsi untuk mengidentifikasi *assets* yang dibutuhkan aplikasi. 
>2. Mengenai penggunaan *assets image* pada Flutter. *Image* atau gambar merupakan *assets* yang akan membuat tampilan aplikasi menjadi lebih menarik dengan menampilkan gambar dari *project assets* ataupun *internet*. Flutter mendukung beberapa format gambar, di antaranya adalah JPEG, WebP, GIF, Animated WEB/GIF, PNG, BMP, dan juga WBMP. Untuk melakukan *loading images*, dapat dengan menggunakan widget `Image` dengan membutuhkan properti *image* dengan nilai *class* `AssetImage()`. Contoh penggunaanya adalah sebagai berikut.
>3. Mengenai penggunaan *assets font* pada Flutter. Pada Flutter, penggunaan *font* dengan *style* tertentu akan menjadi keunikan pada aplikasi. Penentuan *font* yang akan digunakan biasanya ditentukan oleh *UI Designer*. Penerapan *font* pada Flutter dapat dengan menggunakan *custom font* atau dari *package* yang telah terpasang atau ter-*import*.

</br>

Adapun versi detail resume sebagai berikut.

### **Assets**

*Assets* merupakan file yang di-*bundled* dan di-*deployed* bersamaan dengan aplikasi. Terdapat beberapa tipe *assets*, di antaranya adalah *static data* (JSON files), *icons*, *images*, dan *font file* (.ttf).

**Menentukan Assets**

Sebelum menggunakan *assets* tertentu di Flutter, perlu dilakukan beberapa penambahan *dependencies* pada `pubspec.yaml`. *File* `pubspec.yaml` terletak pada *root project*, yang berfungsi untuk mengidentifikasi *assets* yang dibutuhkan aplikasi. Untuk menambahkan atau memasukkan semua *assets* di bawah atau di dalam satu *directory* *name*, dapat digunakan karakter `/`. Contoh penggunaannya adalah sebagai berikut.

```yaml
assets:
	- assets/my_icon.png
	- assets/background.jpg
	
	- assets/
```

</br>

### **Image**

*Image* atau gambar merupakan *assets* yang akan membuat tampilan aplikasi menjadi lebih menarik dengan menampilkan gambar dari *project assets* ataupun *internet*. Flutter mendukung beberapa format gambar, di antaranya adalah JPEG, WebP, GIF, Animated WEB/GIF, PNG, BMP, dan juga WBMP. 

***Loading Images***

Untuk melakukan *loading images*, dapat dengan menggunakan widget `Image` dengan membutuhkan properti *image* dengan nilai *class* `AssetImage()`. Contoh penggunaanya adalah sebagai berikut.

```dart
body: Column(
	children: const [
		Image(
			image: AssetImage('assets/background.jpg'),
		),
		Image(
			image: AssetImage('assets/my_icon.png'),
		),
	]
);
```

Cara lain untuk melakukan *loading images* adalah dengan menggunakan *method* `Image.asset`, yaitu dengan mendapatkan *image* yang sudah ditambahkan dalam *project*. Selain itu, juga dapat dengan menggunakan *method* `Image.network`, yaitu dengan mendapatkan data *image* melalui *internet* dengan menggunakan *string url*-nya. COntoh penggunaannya adalah sebagai berikut.

```dart
body: Column(
	children: const [
		Image.asset('assets/background.jpg'),
		Image.network(https://picsum.photos/id/1/200/300'),
	]
);
```

### **Font**

Pada Flutter, penggunaan *font* dengan *style* tertentu akan menjadi keunikan pada aplikasi. Penentuan *font* yang akan digunakan biasanya ditentukan oleh *UI Designer*. Penerapan *font* pada Flutter dapat dengan menggunakan *custom font* atau dari *package* yang telah terpasang atau ter-*import*.

***Custom Font***

Cara menggunakan *custom font* adalah sebagai berikut.

1. Cari dan *download font* dari situs penyedia *font*, seperti Google Font (https://fonts.google.com/).
2. Import *file* .ttf dari *font* tersebut.
3. Daftarkan *font* sebagai *dependencies* baru di `pubspec.yaml`.
    
    ```yaml
    fonts:
    	- family: Rowdies
    		- asset: fonts/Rowdies-Bold.ttf
    		- asset: fonts/Rowdies-Light.ttf
    		- asset: fonts/Rowdies-Regular.ttf
    ```
    
4. Mengatur *font* sebagai berikut.
    
    ```dart
    Widget build (BuildContext contex) {
    	return MaterialApp(
    		debugShowCheckedModeBanner: false,
    		title: 'Flutter Assets',
    		theme: ThemeData(fontFamily: 'Rowdies'),
    		home: const HomePage(),
    	)
    }
    ```
    
5. Gunakan *font* tersebut di spesifik *widget*.
    
    ```dart
    Text(
    	'Star Hill',
    	style: TextStyle(
    		fontSize: 30,
    		fontFamily: 'Rowdies',
    	),
    ),
    ```
    

</br>

***Font* dari *Package***

Cara menggunakan *custom font* dari *package* adalah sebagai berikut.

1. Tambahkan *package* `google_fonts` di *dependencies*.
    
    ```dart
    dependencies:
    	flutter:
    		sdk: flutter
    	google_fonts: ^2.2.0
    ```
    
2. *Import package* di *file* dart.
    
    ```dart
    import 'package: google_fonts/google_fonts.dart';
    ```
    
3. Gunakan *font* dengan memanggil `GoogleFonts.namaFont()`.
    
    ```dart
    Text(
    	'Star Hill',
    	style: GoogleFonts.rowdies(fontSize: 30),
    ),
    ```
    

</br>

### **Aplikasi Task Management (continue)**

Terdapat beberapa TODO yang dapat dilakukan, di antaranya adalah sebagai berikut.

**Menambahkan *Image***

TODO 23: Menambahkan *image* pada `empty_task_screen.dart`.

```yaml
assets:
	- assets/
```

```dart
return Container(
	alignment: Alignment.center,
	child: Column(
		mainAxisAlignment: MainAxisAlignment.center,
		children: const [
			Image(
				image: AssetImage(
					'assets/empty_background.png',
				),
				height: 250,
			),
		],
	),
);
```

TODO 24: Membuat *profile picture* di `profile_sheet.dart` dengan menggunakan *widget* `CircleAvatar`.

```dart
CircleAvatar(
	radius: 50,
	backgroundImage: AssetImage('assets/profile_pic.jpg'),
),
```

</br>

**Menambahkan Font**

TODO 25: Menambahkan *font* pada setiap *text.*

```yaml
dependencies:
	flutter:
		sdk: flutter
	provider: ^6.0.2
	uuid: ^3.0.5
	google_fonts: ^2.2.0
```

```dart
Text(
	'Andre',
	style: GoogleFonts.poppins(
		fontSize: 20,
		fontWeight: FontWeight.w500,
	),
),
```

TODO 26: (`profile_sheet.dart`) menambahkan konten lain.

```dart
SizedBox(
	child: Column(
		mainAxisAlignment: MainAxisAlignment.spaceBetween,
		children: [
			Text(
				'Task Completed',
				style: GoogleFonts.poppins(fontSize: 17),
			),
			const Icon(
				Icons.chevron_right_rounded,
				size: 30,
			)
		],
	),
	const SizedBox(),
	Row(),
	const SizedBox(),
	Row(),
	const SizedBox(
		ElevatedButton(
			onPressed: () {},
			child: Text(
				'Log Out',
				style: GoogleFonts.poppins(fontSize: 17),
				),
			),
		],
	),
)
```

TODO 27: (`empty_task_screen.dart`) menambahkan *text* di bawah *image empty screen.*

```dart
Text(
	'task masih kosong...',
	style: GoogleFonts.poppins(
		fontSize: 30,
		fontWeight: FontWeight.w500,
	),
)
```