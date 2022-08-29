# **(6) Basic Dart Programming**

*File* ini merupakan resume dari materi *section* 6 pada program Flutter. From Zero to Hero dari Alterra Academy pada Studi Independen Bersertifikat Batch 3 tahun 2022.

## **Data Diri**

| Nama                     | Kelas      | Nomor      |
|--------------------------|------------|------------|
| Nur Muhammad Ainul Yaqin | Flutter A  | 20         | 

</br>

Di section 6 (enam) ini saya belajar tentang **pemrograman dasar dengan bahasa Dart (lanjutan)**.

> **TL;DR**
> 
> Terdapat 3 (tiga) hal utama yang saya pelajari pada *section* ini sebagai berikut.
>
>1. Mengenai fungsi pada bahasa pemrograman Dart lebih dalam. Fungsi dalam bahasa pemrograman Dart tidak hanya sebatas fungsi yang dideklarasikan secara konvensional, tetapi juga terdapat beberapa jenis fungsi, yaitu *Anonymous Function* (fungsi tanpa nama) dan *Arrow Function*.
>2. Mengenai *async* dan *await* pada bahasa pemrograman Dart. Proses *async* dan *await* didukung penuh dalam bahasa pemrograman Dart. *Async* dan *await* ini membuat beberapa proses berjalan secara bersamaan (paralel). Proses *async* berarti suatu proses dijalankan secara paralel sembari proses lain juga dijalankan. Proses *await* berarti suatu proses dijalankan jika dan hanya jika proses lain telah selesai dijalankan atau dieksekusi.
>3. Mengenai tipe data *future* dan *collection* pada bahasa pemrograman Dart. Tipe data *future* sendiri merupakan tipe data yang mendukung proses *async* dan *await* yang telah dijelaskan sebelumnya. Tipe data *collection* merupakan tipe data yang menampung banyak data sekaligus dalam satu variabel. Contoh tipe data *collection* meliputi `list` dan `map`.

</br>

Adapun versi detail resume sebagai berikut.

### **Fungsi (Lanjutan)**

Pada section ini dijelaskan beberapa jenis fungsi yang merupakan modifikasi struktur dari fungsi konvensional.

1. ***Anonymous Function***
    
    *Anonymous Function* merupakan fungsi yang tidak memiliki nama (anonim). Fungsi ini berfungsi sebagai data. Fungsi ini dapat ditulis dengan struktur sebagai berikut.

    ```dart
    () {
        //Perintah yang dijalankan saat fungsi dipanggil
    }
    ```

    Sebagai contoh, berikut adalah contoh *source code* dengan menerapkan *Anonymous Function*.

    ```dart
    var hello = () {
        print('Hello');
    };

    var jumlah = (int a, int b) {
        return a + b;
    };

    void main () {
        hello();
        print (jumlah(1, 2));
    }
    ```

2. ***Arrow Function***
    
    *Arrow Function* merupakan fungsi yang dapat memiliki nama ataupun tidak. Fungsi ini berisi satu data baik dari proses maupun data statis. Nilai return fungsi ini diambil dari data tersebut. Fungsi ini dapat ditulis dengan struktur sebagai berikut.

    ```dart
    () => proses_yang_dijalankan_saat_fungsi_dipanggil();   
    ```

    Sebagai contoh, berikut adalah contoh *source code* dengan menerapkan *Arrow Function*.

    ```dart
    var hello = () => print('Hello');

    var jumlah = (int a, int b) => return a + b;

    void main () {
        hello();
        print (jumlah(1, 2));
    }
    ```

Kedua jenis fungsi ini akan menghasilkan *return* yang sama, namun dengan penulisan yang berbeda dan lebih singkat dibanding penulisan konvensional.

</br>

### **Async-Await**

*Async-Await* berarti sebuah metode untuk menjalankan beberapa proses tanpa perlu menunggu (dilakukan secara *asyncronus*). Proses *async-await* ditulis dalam bentuk fungsi.

![Async-Await](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/c8ffb250-3a73-40a7-bd8f-01a673b50116/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220829%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220829T233201Z&X-Amz-Expires=86400&X-Amz-Signature=850871417f704ed09275ef47fbfae78720674857bf92ebd8d702da86f9dc6225&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)

Fungsi ini dapat ditulis dengan struktur sebagai berikut.

```dart
void P1() {
	Future.delayed(Duration(seconds: 1), () {
		print('Hello dari p1');
	});
}

void P1() {
	print('Hello dari p1');
}

void main() {
	p1();
	p2();
}
```

Pada *source code* tersebut, fungsi dari `p2()` akan dieksekusi terlebih dahulu, baru setelah 1 detik, fungsi `p1()` dieksekusi.

```dart
Future<void> P1() async {
	await Future.delayed(Duration(seconds: 1), () {
		print('Hello dari p1');
	});
}

void P1() {
	print('Hello dari p1');
}

void main() async {
	await p1();
	p2();
}
```

Pada *source code* ini, fungsi dengan keyword *`Await`* akan menunggu hingga proses *asyncronus* selesai. Dengan kata lain, fungsi `p2()` tidak akan dieksekusi hingga fungsi `p1()` selesai tereksekusi. Istilahnya, menjadikan proses *asyncronus* seakan-akan bukan berupa proses *asyncronus*.

### **Tipe Data Future**

Tipe data `Future` merupakan data yang ditunggu. Tipe data ini membawa data `return` dari fungsi *asyncronus* dan juga berjalan secara *asyncronus*. Contoh penggunaannya adalah sebagai berikut.

```dart
Future<String> p1(){
	return Future.delayed(Duration(seconds: 1), (){
		return 'Hello dari p1';
	});
}

void main() async {
	var data = await p1();
	print(data);
}
```

### Collection

*Collection* merupakan struktur data yang lebih canggih untuk menangani masalah yang lebih kompleks. Struktur data ini dapat menampung kumpulan data pada satu tempat atau variabel.

1. **List**
    
    Struktur data `list` menyimpan data secara berbaris dengan tiap data memiliki *index*. *Index* pada `list` dimulai dari 0. Contoh penggunaan dari `list` adalah sebagai berikut.

    ```dart
    void main() async {
        var scores = [];
        //print(scores);
        scores.add(60);
        scores.add(80);
        scores.add(90);
        scores.add(70);
        scores.add(85);
        print(scores);

        print(scores[0]);
        print(scores[1]);
        print(scores[2]);
        print(scores[3]);
        print(scores[4]);
    }
    ```

    Dapat juga digunakan perulangan untuk mengisi dan mengakses data pada `list`.

    ```dart
    void main() async {
        var scores = [60, 80, 90, 70, 85];
        print(scores);

        for (var score in scores) {
            print(score);
        }
    }
    ```

2. **Map**
    
    Struktur data `map` menyimpan data secara *key-value*. *Key* berguna selayaknya *index* pada `list`. Sehingga, dapat digunakan untuk mengambil data (value). Contoh penggunaannya adalah sebagai berikut.

    ```dart
    void main() async {
        var student = {};
        student['name'] = 'Alex Under';
        student['age'] = 16;
        print(student);
        
        print(student['name']);
        print(student['age']);
    }
    ```

    Dapat juga digunakan perulangan untuk mengisi dan mengakses data pada `map`.

    ```dart
    void main() async {
        var student = {
            'name' : 'Alex Under', 
            'age' : 16
        };
        print(student);
        
        for (var key in student.keys) {
            print(student[key]);
        }
    }
    ```
