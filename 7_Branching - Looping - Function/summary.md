# **(7) Branching - Looping - Function**

*File* ini merupakan resume dari materi *section* 7 pada program Flutter. From Zero to Hero dari Alterra Academy pada Studi Independen Bersertifikat Batch 3 tahun 2022.

## **Data Diri**

| Nama                     | Kelas      | Nomor      |
|--------------------------|------------|------------|
| Nur Muhammad Ainul Yaqin | Flutter A  | 20         | 

</br>

Di section 7 (tujuh) ini saya belajar tentang ***branching*, *looping*, dan *function* pada bahasa pemrograman Dart**.

> **TL;DR**
> 
> Terdapat 3 (tiga) hal utama yang saya pelajari pada *section* ini sebagai berikut.
>
>1. Mengenai pengambilan keputusan pada bahasa pemrograman Dart. Pengambilan keputusan dapat menggunakan `if`, `if-else`, dan sisipan `else-if`.
>2. Mengenai perulangan pada bahasa pemrograman Dart. Perulangan dapat menggunakan `for`, `while`, dan `do-while`. Selain itu, dijelaskan juga tentang penghentian perulangan dengan menggunakan *break* dan *continue* yang dilakukan tanpa memerhatikan nilai *boolean* dari perulangan.
>3. Mengenai fungsi pada bahasa pemrograman Dart. Fungsi pada bahasa pemrograman Dart mirip seperti bahasa pemrograman lainnya, begitu juga dengan fungsi dengan parameter dan fungsi dengan *return*-nya.

</br>

Adapun versi detail resume sebagai berikut.

### **Pengambilan Keputusan**

Pengambilan keputusan merupakan penentuan alur program pada kondisi tertentu. 

1. **IF**
    
    Pengondisian dengan `if` memerlukan nilai *boolean* (dari operator *logical* atau *comparison*. Suatu kondisi atau proses akan dijalankan jika nilai *boolean* bernilai `true`. Pengondisian dengan `if` dapat dituliskan dengan struktur sebagai berikut.

    ```dart
    if (nilai_bool) {
        // proses jika nilai_bool adalah true
    }
    ```

    Sebagai contoh, berikut adalah contoh *source code* dengan menerapkan pengondisian dengan `if`.

    ```dart
    void main() {
        var usia = 18;
        if (usia < 20) {
            print('Remaja');
        }
    }	
    ```

2. **IF-ELSE**
    
    Pengondisian `else`ini dilakukan secara beriringan dengan `if`. Perbedaannya, pada struktur ini dapat ditambah alternatif kondisi jika nilai *boolean* adalah `false`. Pengondisian dengan `if-else` dapat dituliskan dengan struktur sebagai berikut.

    ```dart
    if (nilai_bool) {
        // proses jika nilai_bool adalah true
    } else {
        // proses jika nilai_bool adalah false
    }

    ```

    Sebagai contoh, berikut adalah contoh *source code* dengan menerapkan pengondisian dengan `if-else`.

    ```dart
    void main() {
        var usia = 18;
        if (usia < 20) {
            print('Remaja');
        } else {
            print('tidak memiliki golongan');
        }
    }	
    ```

3. **Sisipan ELSE-IF**
    
    Pengondisian ini dilakukan secara beriringan dengan `if`. Perbedaannya, pada struktur ini dapat ditambah alternatif kondisi jika nilai *boolean* adalah `false` dan juga untuk pengujian nilai *boolean* lain. Pengondisian dengan sisipan `else-if` dapat dituliskan dengan struktur sebagai berikut.

    ```dart
    if (nilai_bool) {
        // proses jika nilai_bool adalah true
    } else if (nilai_bool1) {
        // proses jika nilai_bool adalah false
        // dan nilai_bool1 adalah true
    }
    ```

    Sebagai contoh, berikut adalah contoh *source code* dengan menerapkan pengondisian dengan sisipan `else-if`.

    ```dart
    if (nilai_bool) {
        // proses jika nilai_bool adalah true
    } else if (nilai_bool1) {
        // proses jika nilai_bool adalah false
        // dan nilai_bool1 adalah true
    }
    ```

</br>

### **Perulangan**

Perulangan berarti menjalankan proses berulang kali.

1. **For**
    
    Dengan perulangan `for`, dapat diketahui berapa kali perulangan yang terjadi. Dengan perulangan ini, diperlukan nilai awal, nilai boolean (jika `true` maka perulangan dilanjutkan), dan memerlukan pengubah nilai. Perulangan `for` dapat dituliskan dengan struktur sebagai berikut.

    ```dart
    for (nilai_awal; nilai_bool; pengubah_nilai_awal) {
        // proses berulang jika nilai_bool adalah true
    }
    ```

    Sebagai contoh, berikut adalah contoh *source code* dengan menerapkan pengulangan dengan `for`.

    ```dart
    void main() {
        for (var i = 0; i < 10; i += 1) {
            print(i);
        }
    }
    ```

2. **While**
    
    Dengan perulangan `while`, tidak dapat diketahui berapa kali perulangan yang terjadi. Dengan perulangan ini, diperlukan nilai *boolean* (jika `true` maka perulangan dilanjutkan). Perulangan `while` dapat dituliskan dengan struktur sebagai berikut.

    ```dart
    while (nilai_bool) {
        // proses berulang jika nilai_bool adalah true
    }
    ```

    Sebagai contoh, berikut adalah contoh *source code* dengan menerapkan pengulangan dengan `while`.

    ```dart
    void main() {
        var i = 0;
        while (i < 10) {
            print(i);
            i++;
        }
    }
    ```

3. **Do-While**
    
    Dengan perulangan `do-while`, proses dijalankan minimum sekali dan akan diteruskan jika nilai *boolean* adalah `true`. Perulangan ini sebenarnya merupakan modifikasi dari perulangan `while`. Perulangan `do-while` dapat dituliskan dengan struktur sebagai berikut.

    ```dart
    do {
        // proses berulang jika nilai_bool adalah true
    } while (nilai_bool);
    ```

    Sebagai contoh, berikut adalah contoh *source code* dengan menerapkan pengulangan dengan `do-while`.

    ```dart
    void main() {
        var i = 0;
        do {
            print(i);
            i++;
        } while (i < 10);
    }
    ```

</br>

### **Break dan Continue**

Perulangan menggunakan nilai *boolean* untuk menentukan apakah perulangan dilanjutkan atau dihentikan. *Break* dan *continue* merupakan cara yang dapat menghentikan perulangan dengan mengabaikan nilai *boolean*. *Break* sendiri menghentikan seluruh proses perulangan, sedangkan *continue* sendiri menghentikan satu kali proses, atau dengan kata lain melompati satu langkah dari perulangan saja. 

Sebagai contoh, berikut adalah contoh *source code* dengan menerapkan `break`.

```dart
void main() {
	for (var i = 0; true; i++) {
		if (i == 10) {
			break;
		}
		print(i);
	}
}
```

Sebagai contoh, berikut adalah contoh *source code* dengan menerapkan `continue`.

```dart
void main() {
	for (var i = 0;i < 10; i += 1) {
		if (i == 5) {
			continue;
		}
		print(i);
	}
}
```

</br>

### **Fungsi**

Fungsi merupakan kumpulan perintah yang dapat digunakan berkali-kali. Cukup mengubah fungsi sekali, penggunaan lainnya juga akan ikut berubah.

**Membuat Fungsi**

Fungsi dapat dibuat dengan struktur sebagai berikut.

```dart
tipe_data nama_fungsi() {
	// perintah yang dijalankan saat fungsi dipanggil
}
```

Sebagai contoh, berikut adalah contoh *source code* pembuatan fungsi.

```dart
void halo() {
	print('halo');
}
```

**Memanggil Fungsi**

Fungsi yang telah dibuat dapat dipanggil dengan struktur sebagai berikut.

```dart
nama_fungsi();
```

Sebagai contoh, berikut adalah contoh *source code* pemanggilan fungsi.


```dart
void main() {
	halo();
}
```

**Fungsi dengan Parameter**

Pembuatan fungsi yang menggunakan parameter adalah sebagai berikut.

```dart
tipe_data nama_fungsi(tipe_data nama_parameter) {
	// perintah yang dijalankan saat fungsi dipanggil
}
```

Sebagai contoh, berikut adalah contoh *source code* pembuatan dan pemanggilan fungsi dengan menggunakan parameter.

```dart
void tampil(String teks) {
	print(teks);
}

void main() {
	tampil('halo');
}
```

**Fungsi dengan *Return***

Pembuatan fungsi yang dengan *return* adalah sebagai berikut.

```dart
tipe_data nama_fungsi(tipe_data nama_parameter) {
	// perintah yang dijalankan saat fungsi dipanggil
	return nilai;
}
```

Sebagai contoh, berikut adalah contoh *source code* pembuatan dan pemanggilan fungsi dengan *return*.

```dart
Sebagai contoh, berikut adalah contoh *source code* pembuatan dan pemanggilan fungsi dengan *return*.
```