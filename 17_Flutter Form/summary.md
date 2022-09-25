# **(17) Flutter Command Line Interface (CLI) and Flutter Package Management**

*File* ini merupakan resume dari materi *section* 17 pada program Flutter. From Zero to Hero dari Alterra Academy pada Studi Independen Bersertifikat Batch 3 tahun 2022.

## **Data Diri**

| Nama                     | Kelas      | Nomor      |
|--------------------------|------------|------------|
| Nur Muhammad Ainul Yaqin | Flutter A  | 20         | 

</br>

Di section 17 (tujuh belas) ini saya belajar tentang **jenis *form* pada Flutter beserta cara penggunaannya.**


> **TL;DR**
> 
> Terdapat 3 (tiga) hal utama yang saya pelajari pada *section* ini sebagai berikut.
>
>1. Mengenai *form* dan jenisnya pada Flutter. *Form* pada Flutter berfungsi seperti form pada umumnya, yaitu menerima isian data dari pengguna. Isian data tersebut dapat lebih dari satu. Untuk membuat *form* di Flutter, maka harus menggunakan `StatefulWidget` dengan *state* dari *form* disimpan menggunakan `GlobalKey<FormState>`.
>2. Mengenai *input* pada Flutte*r*. *Input* digunakan untuk memfasilitasi interaksi dengan pengguna dalam hal pengambilan data. Terdapat beberapa jenis *input* pada Flutter, yaitu `TextField` (untuk pengisian data teks), `Radio` (untuk pemilihan 1 opsi dari beberapa opsi), `Checkbox` (untuk pemilihan lebih dari 1 opsi dari beberapa opsi), dan `DropdownButton` (untuk memunculkan opsi lain yang dapat dipilih dari 1 opsi sebelumnya).
>3. Mengenai *button* pada Flutter. *Button* digunakan untuk memfasilitasi interaksi dengan pengguna dalam hal pengambilan keputusan. Terdapat beberapa jenis *button* pada Flutter, yaitu `ElevatedButton` (tombol dengan tampilan timbul) dan `IconButton` (tombol yang menampilkan *icon*).

</br>

Adapun versi detail resume sebagai berikut.

### **Flutter Form**

*Form* pada Flutter berfungsi seperti form pada umumnya, yaitu menerima isian data dari pengguna. Isian data tersebut dapat lebih dari satu. Untuk membuat *form* di Flutter, maka harus menggunakan `StatefulWidget` dengan *state* dari *form* disimpan menggunakan `GlobalKey<FormState>`.

```dart
// properti
var formKey = GlobalKey<FormState>();

// build
Form(
	key: formKey,
	child: inputWidgets,
);
```

</br>    

### **Input**

*Form* di Flutter memiliki beberapa jenis *input* sebagai berikut.

1. **TextField**
    
    `TextField` dapat menerima isian data dari pengguna dengan isian lebih dari satu. Pembuatan `TextField` yaitu dengan mengambil data menggunakan `TextEditingController` dengan isian data berupa teks.
    
    ```dart
    // properti
    var inputController = TextEditingController();
    
    // build
    TextField(
    	controller: inputController,
    );
    ```


</br>    

2. **Radio**
    
    `Radio` pada *form* di Flutter digunakan untuk menerima isian data berupa opsi kepada pengguna, dengan pilihan hanya dapat memilih satu opsi dari beberapa opsi yang tersedia. Pembuatan `Radio` yaitu dengan mengambil data menggunakan properti dengan tipe data sesuai *value* pada `radio`.
    
    ```dart
    // properti
    var radioValue = '';
    
    // build
    Radio<String>(
    	value: 'Laki-laki',
    	groupValue: radioValue,
    	onChanged: (String? value) {
    		setState((){
    			radioValue = value ?? '';
    		}),
    	}.
    );
    ```
    

</br>    

3. **Checkbox**
    
    `Checkbox` pada *form* di Flutter digunakan untuk menerima isian data berupa opsi kepada pengguna, dengan dapat memilih beberapa opsi dari beberapa opsi yang tersedia. Pembuatan `Checkbox` yaitu dengan mengambil data menggunakan properti bertipe `boolean`.
    
    ```dart
    // properti
    var checkValue = false;
    
    // build
    Checkbox(
    	value: checkValue,
    	onChanged: (bool? value){
    		setState((){
    			checkValue = value ?? false;
    		});
    	},
    );
    ```
    

</br>    

4. **DropdownButton**
    
    `DropdownButton` pada *form* di Flutter digunakan untuk memberi opsi pada pengguna dengan hanya dapat memilih satu opsi saja. Opsi tidak ditampilkan di awal, tetapi hanya tampil jika ditekan. Pembuatan `DropdownButton` yaitu dengan mengambil data menggunakan properti dengan tipe data sesuai *value* pada `DropdownMenuItem`.
    
    ```dart
    // properti
    var dropdownValue = 0;
    
    // build
    DropdownButton(
    	value: dropdownValue,
    	onChanged: (int? value) {
    		setState() {
    			dropdownValue = value ?? 0;
    		}),
    	}.
    	items: const [
    		DropdownMenuItem(
    			value: 0,
    			child: Text('Pilih ...'),
    		),
    		DropdownMenuItem(
    			value: 1,
    			child: Text('Satu'),
    		),
    		DropdownMenuItem(
    			value: 2,
    			child: Text('Dua'),
    		),
    		DropdownMenuItem(
    			value: 3,
    			child: Text('Tiga'),
    		),
    	],
    );
    ```

</br>    

### **Button**

*Button* pada Flutter bersifat seperti tombol yang dapat melakukan sesuatu saat ditekan. Terdapat beberapa tombol pada Flutter sebagai berikut.

1. **ElevatedButton**
    
    `ElevatedButton` merupakan tombol yang memiliki kesan timbul. Jika ditekan, maka akan menjalankan `onPressed`.
    
    ```dart
    ElevatedButton(
    	child: const Text('Submit'),
    	onPressed: () {
    		// lakukan sesuatu
    	},
    );
    ```

</br>    

2. **IconButton**
    
    `IconButton` adalah tombol yang hanya menampilkan *icon*. Jika ditekan, maka akan menjalankan `onPressed`.
    
    ```dart
    IconButton(
    	icon: const Icon(Icons.add),
    	onPressed: () {
    		// lakukan sesuatu
    	},
    );
    ```