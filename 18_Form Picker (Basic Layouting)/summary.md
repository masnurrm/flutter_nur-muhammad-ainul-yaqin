# **(18) Form Picker (Basic Layouting)**

*File* ini merupakan resume dari materi *section* 18 pada program Flutter. From Zero to Hero dari Alterra Academy pada Studi Independen Bersertifikat Batch 3 tahun 2022.

## **Data Diri**

| Nama                     | Kelas      | Nomor      |
|--------------------------|------------|------------|
| Nur Muhammad Ainul Yaqin | Flutter A  | 20         | 

</br>

Di section 18 (delapan belas) ini saya belajar tentang **pengaturan *layout* pada Flutter beserta beberapa *behavior* unik di dalamnya.**


> **TL;DR**
> 
> Terdapat 3 (tiga) hal utama yang saya pelajari pada *section* ini sebagai berikut.
>
>1. Mengenai *basic* UI *layout* pada Flutter. *Basic* UI *layout* pada Flutter sendiri sebenarnya terbagi menjadi 2 bagian besar, yaitu `Row` dan `Column`. `Row` meletakkan *widget children*-nya berjajar secara horizontal, sedangkan `Column` meletakkan *widget* *children*-nya berurut secara vertikal. 
>2. Mengenai *axis alignment* pada Flutter. Properti `MainAxisAlignment` digunakan `Row` dan `Column` untuk memposisikan *children* mereka di *extra space* yang ada. Properti `CrossAxisAlignment` digunakan `Row` dan `Column` untuk memposisikan *children* mereka pada *cross axis*. *Cross axis* dari `Row` adalah vertikal, sedangkan *cross axis* dari `Column` adalah horizontal. 
>3. Mengenai `Expanded` *widget* pada Flutter. `Expanded` *widget* berfungsi untuk membungkus *widget* lain sehingga ukuran dari *child* `Expanded` *widget* akan dipaksa untuk memenuhi ruang yang tersedia. `Expanded` *widget* sangat berguna untuk membuat aplikasi yang responsif. *Widget* ini harus berada dalam turunan *parent widget* `Row` dan `Column`, serta memiliki *default value* berupa `FlexFit.tight`. Perubahan ukuran pada *widget* ini ditentukan dengan properti `Flex`.

</br>

Adapun versi detail resume sebagai berikut.

### **Row dan Column**

`Row` meletakkan *widget children*-nya berjajar secara horizontal. 

```dart
body: Column(
	children: const [
		BlueBox(),
		BlueBox(),
		BlueBox(),
	],
), // Column
```

</br>

Sebaliknya, `Column` meletakkan *widget* *children*-nya berurut secara vertikal. 

```dart
body: Row(
	children: const [
		BlueBox(),
		BlueBox(),
		BlueBox(),
	],
), // Row
```

</br>

### **MainAxisSize**

`MainAxisSize` digunakan untuk menentukan seberapa banyak *space* yang menempati *main axis*. *Main axis* dari `Row` adalah horizontal, sedangkan *main axis* dari `Column` adalah vertikal. Properti `mainAxisSize` memiliki dua *values*, yaitu `MainAxisSize.max` yang menempati semua *space* dari *main axis* dan `MainAxisSize.min` yang tidak memiliki *extra space*, tetapi hanya untuk *children*-nya saja. Perbedaan dari kedua properti tersebut adalah sebagai berikut.

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/eb5d3b9a-5bf4-4cb7-93fd-329989f14f03/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/ce8533fd-1ee7-46b7-8fcd-0d33bc260c4f/Untitled.png)

### **MainAxisAlignment**

Properti `MainAxisAlignment` digunakan `Row` dan `Column` untuk memposisikan *children* mereka di *extra space* yang ada. `MainAxisAlignment` memiliki 6 *values* sebagai berikut.

1. `MainAxisAlignment.start`
2. `MainAxisAlignment.end`
3. `MainAxisAlignment.center`
4. `MainAxisAlignment.spaceBetween`
5. `MainAxisAlignment.spaceEvenly`
6. `MainAxisAlignment.spaceAround`

Penggunaan setiap *value* dari `MainAxisAlignment` ditunjukkan sebagai berikut.

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/c0bfa50a-0cba-4aa0-9062-d82d68e44f23/Untitled.png)

</br>

### **CrossAxisAlignment**

Properti `CrossAxisAlignment` digunakan `Row` dan `Column` untuk memposisikan *children* mereka pada *cross axis*. *Cross axis* dari `Row` adalah vertikal, sedangkan *cross axis* dari `Column` adalah horizontal. `CrossAxisAlignment` memiliki 5 *values* sebagai berikut.

1. `CrossAxisAlignment.start`
2. `CrossAxisAlignment.end`
3. `CrossAxisAlignment.center`
4. `CrossAxisAlignment.stretch`
5. `CrossAxisAlignment.baseline`

Penggunaan setiap *value* dari `CrossAxisAlignment` ditunjukkan sebagai berikut.

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/6ad7203f-49c8-4bb8-989f-0bc7ea5bc3c2/Untitled.png)

</br>

### **Flexible Widget**

`Flexible` *widget* berfungsi untuk membungkus *widget* lain sehingga *child* dari `Flexible` *widget* menjadi fleksibel atau *resizeable*. `Flexible` *widget* sangat berguna untuk membuat aplikasi yang responsif. 

Penggunaan `Flexible` *widget* sendiri harus berada dalam turunan *parent* *widget* `Row` atau `Column`. Perubahan ukuran di dalam `Flexible` *widget* ditentukan dengan properti `Fit` dan `Flex`.

**Fit Properti**

`Fit` properti digunakan untuk menentukan apakah suatu `Flexible` *widget* memenuhi *extra space* yang tersedia di *main axis*-nya atau tidak. `Fit` properti menerima nilai *values* berupa `FlexFit.loose` ataupun `FlexFit.tight`. *Value* dari `FlexFit.loose` akan memiliki ukuran minimum, sedangkan `FlexFit.tight` akan memiliki ukuran maksimum. Penggunaan `Fit` properti ditunjukkan sebagai berikut.

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/ee5af038-3d53-41d1-a109-86134a922361/Untitled.png)


</br>

**Flex Properti**

`Flex` properti digunakan untuk menentukan perbandingan ukuran dari *child widget*-nya. `Flex` properti menerima *values* berupa `integer` dan membandingkan nilainya dengan `Flex` properti lain. Formula dari `Flex` properti dapat ditulis sebagai berikut. 

```latex
remaining space * (flex / totalOfAllFlexValues)
```

Penggunaan `Flex` properti ditunjukkan sebagai berikut.

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/e30f080e-767f-4280-91f8-9669aab9f005/Untitled.png)

Selain itu, terdapat juga penggunaan `Flexible` tanpa menggunakan *fixed height* dan *width* sebagai berikut.

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/ccb345dd-a34b-408b-a9c1-09bed63d9862/Untitled.png)


</br>

### **Expanded Widget**

`Expanded` *widget* berfungsi untuk membungkus *widget* lain sehingga ukuran dari *child* `Expanded` *widget* akan dipaksa untuk memenuhi ruang yang tersedia. `Expanded` *widget* sangat berguna untuk membuat aplikasi yang responsif. *Widget* ini harus berada dalam turunan *parent widget* `Row` dan `Column`, serta memiliki *default value* berupa `FlexFit.tight`. Perubahan ukuran pada *widget* ini ditentukan dengan properti `Flex`. Berikut ditunjukkan beberapa *behavior* dari `Expanded` *widget* sebagai berikut.

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/62a10c95-36eb-4c58-97db-a13d6b17ee08/Untitled.png)

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/338c3c27-0fa5-4749-94c1-bf3f51baf7db/Untitled.png)

Berikut ditunjukkan juga perbedaan *behavior* antara `Flexible` dan `Expanded` *widget*.

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/dc115160-6147-4c9a-975c-a9309454470e/Untitled.png)


</br>

### **Demo App: Implementasi Flutter *Basic Layout***

Terdapat 4 bagian yang disusun ke dalam *column* sebagai berikut.

***Basic* UI**

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/feeed826-fc5a-46cf-9e94-ef6ec8741556/Untitled.png)

</br>

**Bagian 1: *Image section*.**

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/65172e3f-5c71-4623-9d27-1069e76a4b05/Untitled.png)

</br>

**Bagian 2: *Title section*, *row* yang memiliki 3 *children*, *column text*, *icon star*, dan *text number*.**

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/ce1834f1-e82d-48a8-bb78-9e614a2a7dc5/Untitled.png)

</br>

**Bagian 3: *Button section*, *row* yang memiliki 3 *children*, *column icon*, dan *text*.**

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/f368d148-83b3-4ee0-8a8e-2aa18a1d0f4f/Untitled.png)

</br>

**Bagian 4: *Text section*.**

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/67f1e913-58bd-4a0b-8222-cf1d360b4565/Untitled.png)

</br>

Sehingga, didapatkan hasil akhir sebagai berikut.

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/f1f9b580-ccf7-4082-a5a5-f8c1c49c4284/Untitled.png)
