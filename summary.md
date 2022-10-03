# **(21) Flutter State Management (Provider)**

*File* ini merupakan resume dari materi *section* 21 pada program Flutter. From Zero to Hero dari Alterra Academy pada Studi Independen Bersertifikat Batch 3 tahun 2022.

## **Data Diri**

| Nama                     | Kelas      | Nomor      |
|--------------------------|------------|------------|
| Nur Muhammad Ainul Yaqin | Flutter A  | 20         | 

</br>

Di section 20 (dua puluh) ini saya belajar tentang ***navigation* pada aplikasi yang dibuat dengan Flutter.**

> **TL;DR**
> 
> Terdapat 3 (tiga) hal utama yang saya pelajari pada *section* ini sebagai berikut.
>
>1. Mengenai *state* pada Flutter. *State* merupakan data yang dibaca saat awal pembuatan widget. *State* hanya dapat berubah saat *widget* sedang aktif dan hanya dimiliki oleh `StatefulWidget`. Salah satu *state* terdapat pada Flutter adalah *global state*.
>2. Mengenai *global state* pada Flutter. Seperti yang telah disinggung sebelumnya, *global state* merupakan *state* biasa yang dapat digunakan pada seluruh *widget*. Salah satu *global state* yang umum digunakan pada Flutter adalah `Provider`. 
>3. Mengenai *state* `Provider` **pada Flutter. `Provider` merupakan salah satu *global state* atau *state management* yang terdapat pada Flutter. *State management* ini perlu di-*install* agar dapat digunakan. Instalasi Provider dilakukan dengan menambah *package* `provider` pada bagian *dependencies* dalam file `pubspec.yaml`. Kemudian, dapat dijalankan perintah `flutter pub get`.

</br>

Adapun versi detail resume sebagai berikut.

### **Pengertian State**

*State* merupakan data yang dibaca saat awal pembuatan widget. *State* hanya dapat berubah saat *widget* sedang aktif dan hanya dimiliki oleh `StatefulWidget`. Salah satu *state* terdapat pada Flutter adalah *global state*. *Global state* memiliki paradigma dengan *global variable*, di mana *global state* akan dimanfaatkan *widget*-*widget* lain yang melakukan `extend` terhadapnya. Hal ini dilakukan tentunya agar dapat memanfaatkan *state* yang sama dengan mudah dan membuat kode lebih efisien.

*State* dibuat sebagai *property* dari *class* dan digunakan pada *widget* saat di-*build*.

```dart
// property
var number = 0;

// build
Text('$number');
```

</br>


*State* diubah dengan menggunakan *method* `setState`.

```dart
ElevatedButton(
	child: const Text('Tambah'),
	onPressed: () {
		setState(() {
			number = number + 1;
		});
	},
);
```

</br>


### **Global State**

Seperti yang telah disinggung sebelumnya, *global state* merupakan *state* biasa yang dapat digunakan pada seluruh *widget*. Salah satu *global state* yang umum digunakan pada Flutter adalah `Provider`. 

`Provider` merupakan salah satu *global state* atau *state management* yang terdapat pada Flutter. *State management* ini perlu di-*install* agar dapat digunakan. Instalasi Provider dilakukan dengan menambah *package* `provider` pada bagian *dependencies* dalam file `pubspec.yaml`. Kemudian, dapat dijalankan perintah `flutter pub get`.

```yaml
dependencies:
	provider:
```

</br>


Cara pembuatan *state* `Provider` adalah dengan mendefinisikan *state* dalam bentuk *class*. Contoh implementasi adalah sebagai berikut.

```dart
import 'package:flutter/material.dart';

class Contact with ChangeNotifier {
  List<Map<String, String>> _contacts = [];

  List<Map<String, String>> get contacts = [];

  void add(Map<String, String> contact) {
    _contacts.add(contact);
    notifyListeners();
  }
}
```

</br>


Selanjutnya, cara mendaftarkan *state* `Provider` adalah dengan *import* ke dalam *file* `main.dart`. Selanjutnya, daftarkan pada `runApp` dengan `MultiProvider`.

```dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:phonebookapp/stores/contact.dart' as contact_store;

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => contact_store.ContactStore()),
      ],
      child: const MyApp(),
    ),
  );
}
```

</br>


Terakhir, penggunaan *state* `Provider` dilakukan dengan menyimpan `Provider` dalam suatu variabel dan ambil data dari `Provider` tersebut melalui `getter`.

```dart
// build
import 'package:flutter/material.dart';

final contactProvider = Provider.of<contact_store.Contact>(context);

// return
ListView.builder(
  itemCount: contactProvider.contacts.length,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text(contactProvider.contacts[index]['name'] ?? ''),
      subtitle: Text(contactProvider.contacts[index]['phone'] ?? ''),
    ))
  }
)
```