# **(11) Object Oriented Programming 2**

*File* ini merupakan resume dari materi *section* 11 pada program Flutter. From Zero to Hero dari Alterra Academy pada Studi Independen Bersertifikat Batch 3 tahun 2022.

## **Data Diri**

| Nama                     | Kelas      | Nomor      |
|--------------------------|------------|------------|
| Nur Muhammad Ainul Yaqin | Flutter A  | 20         | 

</br>

Di section 11 (sebelas) ini saya belajar tentang ***lanjutan object oriented programming* (OOP) pada bahasa pemrograman Dart.**


> **TL;DR**
> 
> Terdapat 3 (tiga) hal utama yang saya pelajari pada *section* ini sebagai berikut.
>
>1. Mengenai *constructor*. *Constructor* sendiri digunakan untuk mengkontruksi objek baru. *Constructor* merupakan *method* yang dijalankan saat pembuatan objek. 
>2. Mengenai *inheritance*, beserta *method overriding* dan *interface*. Ketiganya berfungsi untuk membuat *class* baru dengan memanfaatkan *class* yang sudah ada. Bedanya, pada *inheritance,* kita menggunakan kemampuan *class* yang sudah ada untuk dapat dimiliki oleh *class* baru. Sedangkan *method overriding* merupakan proses menulis ulang *method* yang ada pada `super-class`. *Method overriding* dilakukan dengan tujuan agar *class* dapat memiliki *method* yang sama, dengan proses yang berbeda. Terakhir, *interface* merupakan *class* yang menunjukkan *method* apa saja yang ada pada suatu *class*. Pada *interface*, semua *method* wajib di-*override*. 
>3. Mengenai paradigma *abstract class*, *polymorphism*, dan *generics*. *Abstract class* merupakan *class* abstrak yang menunjukkan *method* apa saja yang ada pada suatu *class,* tidak dapat dibuat sebagai objek, dan tidak semua *method* di dalamnya harus di-*override*. Sedangkan *polymorphism* merupakan paradigma yang menggambarkan kemampuan data yang dapat berubah menjadi bentuk lain. Terakhir, paradigma *generics* dapat digunakan pada *class* atau fungsi. Dengan menggunakan paradigma *generics*, *class* atau fungsi dapat mempunyai kemampuan agar dapat menerima data dengan tipe yang berbeda-beda.

</br>

Adapun versi detail resume sebagai berikut.

### **Constructor**

*Constructor* digunakan untuk mengkontruksi objek baru. *Constructor* merupakan *method* yang dijalankan saat pembuatan objek. *Constructor* juga dapat dapat menerima parameter, namun tidak memiliki *return value*. Nama sama dengan nama *class*.

Pemberian *constructor* dapat dilakukan dengan menambahkan *method* menggunakan nama sama dengan nama *class*.

```dart
class Hewan {
	var mata;
	var kaki;
	
	Hewan() {
		mata = 0;
		kaki = 0;
	}
}
```

</br>

### **Inheritance**

*Inheritance* berfungsi untuk membuat *class* baru dengan memanfaatkan *class* yang sudah ada. Bertujuan agar kemampuan *class* yang sudah ada untuk dapat dimiliki oleh *class* baru.

Untuk melakukan *inheritance*, dapat dengan melakukan penambahan `extends` saat pembuatan *class* baru.

```dart
class Kambing extends Hewan {
	Kambing() {
		mata = 2;
		kaki = 4;
	}
}
```

Selanjutnya, untuk proses membuat objek dari *class* yang terjadi *inheritance* prosesnya sama seperti pembuatan objek pada umumnya. Contohnya adalah sebagai berikut.

```dart
void main() {
	var k1 = Kambing();
	print(k1.mata); // output -> 2

	var h1 = Hewan();
	print(h1.mata); // output -> 0
}
```

</br>

### **Method Overriding**

*Method overriding* merupakan proses menulis ulang *method* yang ada pada `super-class`. *Method overriding* dilakukan dengan tujuan agar *class* dapat memiliki *method* yang sama, dengan proses yang berbeda.

Terdapat beberapa ketentuan untuk melakukan *method overriding*, yaitu sebagai berikut.

1. Dilakukan pada class yang melakukan *inheritance*.
2. Method sudah ada pada *class* induk.
3. Method ditulis ulang seperti membuat *method* baru pada *class* anak.
4. Ditambahkan tanda `@override` di baris sebelum *method* dibuat.

Selanjutnya, untuk proses membuat objek dari *class* yang terjadi *inheritance* prosesnya sama seperti pembuatan objek pada umumnya. Contohnya adalah sebagai berikut.

```dart
void main() {
	var k1 = Kambing();
	k1.reproduksi();
	k1.bernapas();

	var h1 = Hewan();
	print(h1.mata);
	h1.reproduksi();
	h1.bernapas();
}
```

</br>

### **Interface**

Interface berupa *class* yang menunjukkan *method* apa saja yang ada pada suatu *class*. Pada *interface*, semua *method* wajib di-*override*. Interface digunakan dengan menggunakan `implements`.

*Interface* sendiri sekilas mirip dengan *inheritance*. Namun, pada *class* yang melakukan `implements`, wajib melakukan *override* semua *method* yang ada pada *class* induk. 

Penggunaan *interface* dicontohkan sebagai berikut dengan kasus *class* Hewan yang di-*interface* dengan *class* Kambing.

```dart
class Hewan {
	reproduksi() {
		print('tidak diketahui');
	}
	
	bernapas() {
		print('tidak diketahui');
	}
}
```

```dart
class Kambing implements Hewan {
	@override
	reproduksi() {
		print('melahirkan');
	}
	
	@override
	bernapas() {
		print('paru-paru');
	}
}
```

Selanjutnya, untuk proses membuat objek dari *class* yang terjadi *inheritance* prosesnya sama seperti pembuatan objek pada umumnya. Contohnya adalah sebagai berikut.

```dart
void main() {
	var k1 = Kambing();
	k1.reproduksi(); // output -> melahirkan
	k1.bernapas(); // output -> paru-paru

	var h1 = Hewan();
	h1.reproduksi(); // output -> tidak diketahui
	h1.bernapas(); // output -> tidak diketahui
}
```

</br>

### **Abstract Class**

*Abstract class* merupakan *class* abstrak yang menunjukkan *method* apa saja yang ada pada suatu *class*. *Abstract class* dapat digunakan dengan menggunakan `extends`. *Abstract class* tidak dapat dibuat sebagai objek, dan tidak semua *method* di dalamnya harus di-*override*.

Penggunaan *interface* dicontohkan sebagai berikut dengan kasus *class* Hewan yang di-*extends* menjadi *class* Kambing.

```dart
abstract class Hewan {
	reproduksi() {
		print('tidak diketahui');
	}
	
	bernapas() {
		print('tidak diketahui');
	}
}
```

```dart
class Kambing extends Hewan {
	@override
	reproduksi() {
		print('melahirkan');
	}
}
```

Selanjutnya, penggunaan *class* tersebut ditunjukkan dalam contoh *source code* berikut.

```dart
void main() {
	var k1 = Kambing();
	k1.reproduksi(); // output -> melahirkan
	k1.bernapas(); // output -> tidak diketahui
}
```

</br>

### **Polymorphism**

*Polymorphism* merupakan paradigma yang menggambarkan kemampuan data yang dapat berubah menjadi bentuk lain. Tipe data yang dapat digunakan adalah `super class`. *Polymorphism* dapat dilakukan pada *class* dengan `extends` atau `implements`.

Penggunaan *polymorphism* dicontohkan sebagai berikut dengan kasus objek dari *class* Kambing dengan tipe data *class* Hewan.

```dart
void main() {
	Hewan k1 = Kambing();
	k1.reproduksi(); 
	k1.bernapas(); 
}
```
\
</br>

### **Generics**

Paradigma *generics* dapat digunakan pada *class* atau fungsi. Dengan menggunakan paradigma *generics*, *class* atau fungsi dapat mempunyai kemampuan agar dapat menerima data dengan tipe yang berbeda-beda. Tipe data yang diinginkan tersebut ditentukan saat membuat *class* atau saat menjalankan fungsi.

Pembuatan *class* dengan paradigma *generics* dicontohkan sebagai berikut dengan kasus *class* Hadiah yang dapat dimasukkan data dengan tipe T, dengan tipe T yang dapat digunakan di seluruh *class* Hadiah.

```dart
class Hadiah,T. {
	var isi;
	
	Hadiah(T i) {
		isi = i;
	}
}
```

Penggunaan *class* tersebut ditunjukkan dalam contoh *source code* berikut dengan menambahkan tipe data yang diingkan setelah nama *class*.

```dart
void main() {
	var h1 = Hadiah<String>('mobil');
	print(h1.isi); // output -> mobil

	var h2 = Hadiah<int>(10);
	print(h2.isi); // output -> 10
}
```

Kemudian, pembuatan fungsi dengan paradigma *generics* tersebut dengan menambahkan tempat variabel *generics* setelah nama fungsi.

```dart
void cektipe<T>(T data){
	print(data.runtimeType);
}
```

Penggunaan fungsi tersebut ditunjukkan dalam contoh *source code* berikut dengan menambahkan tipe data yang diingkan setelah nama fungsi.

```dart
void main() {
	cekTipe<String>("satu"); // output -> String
	cekTipe<int>(1); // output -> int
}
```