# **(15) Flutter Layout**

*File* ini merupakan resume dari materi *section* 15 pada program Flutter. From Zero to Hero dari Alterra Academy pada Studi Independen Bersertifikat Batch 3 tahun 2022.

## **Data Diri**

| Nama                     | Kelas      | Nomor      |
|--------------------------|------------|------------|
| Nur Muhammad Ainul Yaqin | Flutter A  | 20         | 

</br>

Di section 15 (limabelas) ini saya belajar tentang ***layouting* pada Flutter dengan dua jenis *layout*, yaitu *single*-*child layout* dan *multi*-*child layout* dengan kegunaannya masing-masing.**


> **TL;DR**
> 
> Terdapat 3 (tiga) hal utama yang saya pelajari pada *section* ini sebagai berikut.
>
>1. Mengenai *layout* pada Flutter. *Layout* digunakan untuk mengatur tata letak pada *project* Flutter. *Layout* berbentuk *widget* yang mengatur *widget* di dalamnya. Tanpa adanya pemahaman tentang *layout*, maka proses *slicing* desain dari rancangan UI/UX akan menjadi sulit.
>2. Mengenai *Single-child Layout* pada Flutter. *Single-child layout* merupakan *layout* dengan *widget* yang hanya dapat menampung satu *child widget* di dalamnya. Terdapat beberapa *single*-*child layout* yang dapat digunakan, antara lain `Container`, `Center`, dan `SizedBox`.
>3. Mengenai *Multi-child Layout* pada Flutter. *Multi*-*child layout* merupakan *layout* dengan *widget* yang dapat menampung lebih dari satu *child widget* di dalamnya. Terdapat beberapa *multi*-*child layout* yang dapat digunakan, antara lain `Column`, `Row`, `ListView`, dan `GridView`.

</br>

Adapun versi detail resume sebagai berikut.

### **Apa itu Layout?**

*Layout* digunakan untuk mengatur tata letak pada *project* Flutter. *Layout* berbentuk *widget* yang mengatur *widget* di dalamnya.

</br>

### **Single-child Layout**

*Single-child layout* merupakan *layout* dengan *widget* yang hanya dapat menampung satu *child widget* di dalamnya. Terdapat beberapa *single*-*child layout* yang dapat digunakan antara lain sebagai berikut.

1. **Container**
    
    `Container` berfungsi untuk membuat sebuah *box* yang membungkus *widget* lain. *Box* tersebut memiliki *margin*, *padding*, dan *border*. Struktur dari *container* adalah sebagai berikut.
    
    ```dart
    Container(
    	child: Teks(teks),
    );
    ```
    
    Sedangkan untuk contoh penerapannya adalah sebagai berikut.
    
    ```dart
    Container(
    	margin: const EdgeInsets.all(10),
    	padding: const EdgeInsets.all(10),
    	decoration: BoxDecoration(
    		border: Border.all(),
    	),
    	child: const Text('HALO'),
    );
    ```
    

1. **Center**
    
    `Center` berfungsi untuk membuat sebuah *box* yang membungkus *widget* lain dan membuat *widget* yang ada di dalamnya berada di bagian tengah. `Center` akan memenuhi lebar dan tinggi ruang di luarnya. Struktur dari *center* adalah sebagai berikut.
    
    ```dart
    Center(
    	child: Text(teks),
    );
    ```
    
2. **SizedBox**
    
    `SizedBox` berfungsi untuk membuat sebuah *box* yang membungkus *widget* lain. `SizedBox` sebenarnya mirip dengan `container`, namun lebih sederhana. *Box* yang dihasilkan oleh `SizedBox` dapat diatur lebar dan tingginya. Struktur dari `SizedBox` adalah sebagai berikut.
    
    ```dart
    SizedBox(
    	width: 100,
    	height: 150,
    	child: Text(teks),
    );
    ```
    
</br>

### **Multi-child Layout**

*Multi*-*child layout* merupakan *layout* dengan *widget* yang dapat menampung lebih dari satu *child widget* di dalamnya. Terdapat beberapa *multi*-*child layout* yang dapat digunakan antara lain sebagai berikut.

1. **Column**
    
    `Column` berfungsi untuk mengatur *widget*-*widget* di dalamnya secara vertikal dan menjadi susunan kolom. Struktur dari `Column` adalah sebagai berikut.
    
    ```dart
    Column(
    	children: const [
    		Text(teks),
    		Text(teks),
    		Text(teks),
    		Text(teks),
    	],
    );
    ```
    
    Sedangkan untuk contoh penerapannya adalah sebagai berikut.
    
    ```dart
    Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all()),
          child: const Text('H'),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all()),
          child: const Text('A'),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all()),
          child: const Text('L'),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all()),
          child: const Text('O'),
        ),
      ],
    );
    ```
    
2. **Row**
    
    `Row` berfungsi untuk mengatur *widget*-*widget* di dalamnya secara horizontal dan menjadi susunan baris. Struktur dari `Row` adalah sebagai berikut.
    
    ```dart
    Row(
    	children: const [
    		Text(teks),
    		Text(teks),
    		Text(teks),
    		Text(teks),
    	],
    );
    ```
    
    Sedangkan untuk contoh penerapannya adalah sebagai berikut.
    
    ```dart
    Row(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all()),
          child: const Text('H'),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all()),
          child: const Text('A'),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all()),
          child: const Text('L'),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all()),
          child: const Text('O'),
        ),
      ],
    );
    ```
    
3. **ListView**
    
    `ListView` digunakan untuk mengatur *widget*-*widget* di dalamnya dalam bentuk *list*. Dengan `ListView`, *widget*-*widget* tersebut akan memiliki kemampuan *scroll*. Contoh penerapannya adalah sebagai berikut.
    
    ```dart
    ListView(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all()),
          child: const Text('H'),
        ),
    	],
    );
    ```
    
4. **GridView**
    
    `GridView` digunakan untuk mengatur *widget*-*widget* di dalamnya dalam bentuk galeri. Struktur dari `GridView` adalah sebagai berikut.
    
    ```dart
    GridView.count(
    	crossAxisCount: angka,
    	children: [],
    );
    ```
    
    Sedangkan untuk contoh penerapannya adalah sebagai berikut.
    
    ```dart
    GridView.count(
    	crossAxisCount: 2,
    	children: [
    		Container(
    			margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all()),
          child: const Text('H'),
    		),
    	],
    );
    ```