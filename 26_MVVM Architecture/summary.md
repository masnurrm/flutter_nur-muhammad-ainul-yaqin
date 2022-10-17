# **(26) 2MVVM Architecture**

*File* ini merupakan resume dari materi *section* 26 pada program Flutter. From Zero to Hero dari Alterra Academy pada Studi Independen Bersertifikat Batch 3 tahun 2022.

## **Data Diri**

| Nama                     | Kelas      | Nomor      |
|--------------------------|------------|------------|
| Nur Muhammad Ainul Yaqin | Flutter A  | 20         | 

</br>

Di section 26 (dua puluh enam) ini saya belajar tentang **arsitektur MVVM pada aplikasi Flutter serta bagaiman cara penggunaannya.**

> **TL;DR**
> 
> Terdapat 3 (tiga) hal utama yang saya pelajari pada *section* ini sebagai berikut.
>
>1. Mengenai arsitektur MVVM. MVVM sendiri memiliki kepanjangan `Model-View-ViewModel`. Arsitektur ini memisahkan *logic* dengan tampilan (`View`) ke dalam `ViewModel`.
>2. Mengenai keuntungan jika menggunakan arsitektur MVVM . Keuntungan dari arsitektur MVVM antara lain adalah *reusability* (alur *logic* dapat digunakan beberapa tampilan), *maintainability* (tampilan tidak tertumpuk dengan *logic*), dan *testability* (pengujian antara tampilan dan *logic* dilakukan terpisah).
>3. Mengenai persiapan dan penggunaan arsitektur MVVM. Persiapan yang perlu dilakukan adalah mengatur direktori serta membuat `model`. Selanjutnya, mengatur `ViewModel` dan menempatkannya di beberapa *widget* yang membutuhkan *logic* yang sama.

</br>

Adapun versi detail resume sebagai berikut.

### **Apa itu MVVM Architecture?**

MVVM sendiri memiliki kepanjangan `Model-View-ViewModel`. Arsitektur ini memisahkan *logic* dengan tampilan (`View`) ke dalam `ViewModel`.


</br>

### **Keuntungan yang Didapat**

Arsitektur MVVM memiliki beberapa keuntungan sebagai berikut.

1. **Reusability**
    
    Jika ada beberapa tampilan yang memerlukan alur *logic* yang sama, maka mereka bisa menggunakan `ViewModel` yang sama.
    
2. **Maintainability**
    
    Mudah dirawat karena pekerjaan terkait tampilan tidak tertumpuk bersama *logic*.
    
3. **Testability**
    
    Pengujian menjadi terpisah antara pengujian tampilan dengan pengujian *logic* sehingga dapat meningkatkan produktivitas pada pengujian.
    

</br>

### **Melakukan MVVM**

Untuk melakukan MVVM, maka perlu melakukan beberapa langkah sebagai berikut.

1. **Persiapan Struktur Direktori**
    
    `Model` memiliki 2 bagian, yaitu bentuk data yang akan digunakan dan sumber dari data tersebut. Tiap *screen* diletakkan dalam sebuah direktori yang di dalamnya terdapat `View` dan `ViewModel`.
    
    ```
    lib
    --- model
    		--- api
    			  --- contact_api.dart
    		---	contact_model.dart
    --- screen
    		--- contact
    				--- contact_screen.dart
    				--- contact_view_model.dart			
    
    ```
    

</br>

2. **Model**
    
    `Model` merupakan bentuk data yang akan digunakan dan dibuat dalam bentuk *class*. Data-data yang dimuat diletakkan pada suatu *property*.
    
    ```dart
    class Contact {
    	final int id;
    	final String name;
    	final String phone;
    
    	Contact({required this.id, required this.name, required this.phone});
    }
    ```
    

</br>

3. **Model API**
    
    ```dart
    class ContactAPI {
      // getContacts digunakan untuk mengambil data dari server
      // dengan metode REST API
      // dan mengubah data tersebut ke dalam bentuk class Contact
      static Future<List<Contact>> getContacts() async {
        final response = await Dio().get('https://my-json-server.typicode.com/typicode/demo/posts');
        List<Contact> contacts = (response.data as List).map(e) => Contact(id: e['id'], name: e['name'], email: e['email'], phone: e['phone'])).toList();
    
        return contacts;
      }
    }
    ```
    

</br>

4. **ViewModel**
    
    `ViewModel` menyimpan data-data dan *logic* yang diperlukan halaman `ContactScreen`. Jika *widget* lain memerlukan *logic* yang sama, maka dapat menggunakan `ViewModel` ini juga.
    
    ```dart
    // ViewModel untuk halaman ContactScreen
    class ContactViewModel with ChangeNotifier {
      // property untuk menampung data contact
      List<Contact> _contacts = [];
    
      // getter untuk mengambil data dari property _contacts
      List<Contact> get contacts => _contacts;
    
      // fungsi getAllContacts untuk
      // mengambil data contacts melalui Contact API
      // menyimpan data contacts pada property _contacts
      getAllContacts() async {
        _contacts = await ContactAPI.getContacts();
        notifyListeners();
      }
    }
    ```

</br> 

5. **Mendaftarkan ViewModel**
    
    Mendaftarkan `ViewModel` dapat dengan menggunakan `MultiProvider` agar dapat menggunakan banyak `ViewModel`. Di sini, digunakan `MaterialApp` sebagai *child* utama.
    
    ```dart
    runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ContactViewModel(),
          ),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: ContactScreen(),
        ),
      )
    );
    ```


</br> 

6. **View**
    
    Menggunakan `StatefulWidget`.
    
    ```dart
    // menjalankan getAllContacts
    // setelah halaman ditampilkan dan siap berinteraksi dengan pengguna
    @override
    void didChangeDependencies() {
      super.didChangeDependencies();
      WidgetsBinding.intance!.addPostFrameCallback((timeStamp) {
        Provider.of<ContactsProvider>(context, listen: false).getAllContacts();
      });
    }
    ```


</br> 

7. **Menampilkan Data di View**
    
    Untuk menampilkan data, letakkan pada bagian `build`. Kemudian, menggunakan `getters` yang ada pada `ViewModel`. Terakhir, data dapat langsung ditampilkan pada `widgets`.
    
    ```dart
    // pada bagian build gunakan ViewModel
    // ambil data contacts dan tampilkan pada ListView
    final modelView = Provider.of<ContactViewModel>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: modelView.contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(modelView.contacts[index].name),
            subtitle: Text(modelView.contacts[index].phone),
          );
        },
      ),
    );
    ```
    

</br>

Hasil akhirnya, merupakan sebuah halaman aplikasi yang terdapat `AppBar` berjudul `Contacts` dan terdapat *list* data *contact* berupa nama dan nomor teleponnya.