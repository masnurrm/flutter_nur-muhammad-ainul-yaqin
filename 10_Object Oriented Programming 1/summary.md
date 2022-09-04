# **(10) Object Oriented Programming 1**

*File* ini merupakan resume dari materi *section* 10 pada program Flutter. From Zero to Hero dari Alterra Academy pada Studi Independen Bersertifikat Batch 3 tahun 2022.

## **Data Diri**

| Nama                     | Kelas      | Nomor      |
|--------------------------|------------|------------|
| Nur Muhammad Ainul Yaqin | Flutter A  | 20         | 

</br>

Di section 10 (sepuluh) ini saya belajar tentang ***object oriented programming* (OOP) pada bahasa pemrograman Dart.**


> **TL;DR**
> 
> Terdapat 3 (tiga) hal utama yang saya pelajari pada *section* ini sebagai berikut.
>
>1. Mengenai OOP pada bahasa pemrograman Dart. OOP pada bahasa pemrograman Dart sendiri sama seperti yang terdapat pada bahasa pemrograman lain pada umumnya (C++, Java, JavaSript, Python, dan lainnya) yang mana memiliki keuntungan seperti kemudahan dalam *troubleshooting* serta mudah untuk digunakan ulang. OOP pada bahasa pemrograman Dart juga memiliki bagian-bagian yang sama seperti umumnya (*class, object, method, property, inheritance, generics*, dan lainnya).
>2. Mengenai *class* pada OOP bahasa pemrograman Dart. *Class* merupakan abstraksi, gambaran, blueprint dari sebuah benda (objek). *Class* memiliki ciri-ciri yang disebut *property* dan memiliki sifat dan kemampuan yang disebut *method*. Dari kelas yang dibuat, dapat dibuat objek berdasarkan kelas tersebut. Objek disimpan dalam variabel yang disebut juga dengan *instance of class*.
>3. Mengenai *property* dan *method* pada OOP bahasa pemrograman Dart. *Property* merupakan ciri-ciri suatu class atau hal-hal yang dimiliki suatu *class* untuk menggambarkan suatu objek yang memiliki sifat seperti variabel. Sedangkan *method* merupakan sifat atau perilaku (aktivitas yang dapat dilakukan*)* suatu *class*. *Method* merupakan sebuah fungsi yang terdapat dalam sebuah *class* yang mana pembuatannya juga sama seperti pembuatan sebuah fungsi.

</br>

Adapun versi detail resume sebagai berikut.

### **Perkenalan Object Oriented Programming**

*Object oriented programming* (OOP) adalah paradigma pemrograman yang berkonsep objek, yang mana dapat memvisualisasikan objek di dunia nyata dalam program komputer. Dalam *object oriented programming* (OOP), dapat disusun abstraksi objek di mana dapat ditampilkan atribut atau properti yang relevan saja dan disembunyikan detailnya. Data dan proses diletakkan pada abstraksi tersebut.

Keuntungan *Object oriented programming* (OOP) adalah sebagai berikut.

1. Mudah di-*troubleshoot*
    
    Ketika terjadi *error*, dapat diketahui letak *error* tanpa memeriksa baris perbaris dari *source code*.
    
2. Mudah digunakan ulang
    
    Beberapa objek memiliki kesamaan ciri-ciri dan perilaku sehingga tidak perlu membangun ulang di setiap objek nantinya.
    

*Object oriented programming* (OOP) sendiri dapat ditemukan dalam berbagai bahasa pemrograman, seperti bahasa Dart, C++, Java, JavaScript, dan Python.

*Object oriented programming* (OOP) memiliki beberapa bagian, di antaranya adalah sebagai berikut.

1. *Class*
2. *Object*
3. *Property*
4. *Method*
5. *Inheritance*
6. *Generics*

</br>

### **Class**

*Class* merupakan abstraksi, gambaran, blueprint dari sebuah benda (objek). *Class* memiliki ciri-ciri yang disebut *property* dan memiliki sifat dan kemampuan yang disebut *method*.

Ketika membuat *class*, maka digunakan kata kunci `class` dan diikuti dengan nama *class* dengan diawali huruf besar (*Pascal Case*). Setiap *property* dan *method* diletakkan di dalam kurung kurawal `{ }`.

```dart
class Hewan {
	// property
	// method
}
```

Dari kelas yang dibuat, dapat dibuat objek berdasarkan kelas tersebut. Objek disimpan dalam variabel yang disebut juga dengan *instance of class*. Objek akan diperlalukan seperti data dalam program. 

```dart

class Hewan {}

void main() {
	var h1 = Hewan();
	var h2 = Hewan();
	var h3 = Hewan();

	print(h1); // Output -> Instance of 'Hewan'
	print(h2); // Output -> Instance of 'Hewan'
	print(h3); // Output -> Instance of 'Hewan'
}
```

</br>

### **Property**

*Property* merupakan ciri-ciri suatu class atau hal-hal yang dimiliki suatu *class* untuk menggambarkan suatu objek. Contohnya, seperti nama, warna, ukuran, dan lain-lain. *Property* ini memiliki sifat seperti variabel, dimana ketika membuat suatu properti perlu menentukan tipe data dan menginisialisasi nilainya secara eksplisit. *Property* juga dapat dijadikan *nullable* dengan menambahkan `?` setelah tipe data.

*Property* diletakkan di dalam sebuah *class* seperti berikut.

```dart
class Hewan {
	var mata = 0;
	var kaki = 0;
}
```

Untuk mengakses *property*, dapat dengan melakukan hal yang sama ketika mengakses suatu variabel. Namun, untuk mengakses *property* perlu melalui sebuah objek.

```dart
class Hewan {
	var mata = 2;
	var kaki = 4;
}

void main() {
	var h1 = Hewan();
	print(h1.mata); // output -> 2
	print(h1.kaki); // output -> 4
}
```

</br>

### **Method**

*Method* merupakan sifat atau perilaku suatu *class*. *Method* dapat diartikan sebagai aktivitas yang dapat dilakukan oleh suatu *class*. Contohnya adalah seperti hewan yang dapat tidur, makan, minum, berjalan, dan lain-lain. *Method* merupakan sebuah fungsi yang terdapat dalam sebuah *class*. Pembuatan *method* sama seperti pembuatan fungsi.

Dalam o*bject oriented programming* (OOP), *method* dapat ditambahkan dalam sebuah class.

```dart
class Hewan {
	void bersuara() {
		print(' ');
	}
}
```

*Method* dapat dijalankan dengan melalui sebuah objek.

```dart
class Sapi {
	void makan() {
		print('Makan');
	}
}

void main() {
	var h1 = Sapi();
	h1.makan; // output -> Makan
}
```