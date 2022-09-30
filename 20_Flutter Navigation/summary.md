# **(20) Flutter Navigation**

*File* ini merupakan resume dari materi *section* 20 pada program Flutter. From Zero to Hero dari Alterra Academy pada Studi Independen Bersertifikat Batch 3 tahun 2022.

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
>1. Mengenai *navigation* pada aplikasi. *Navigation* adalah sebuah cara, proses, atau metode untuk berpindah dari halaman satu ke halaman lain. *Navigation* biasanya terjadi ketika terdapat interaksi pada halaman sebelumnya, misalnya tombol sehingga perlu beralih ke halaman lain. *Navigation* sangat penting untuk diperhatikan dalam pengembangan aplikasi karena berhubungan langsung dengan *routing pages* dan juga alur dari aplikasi itu sendiri.
>2. Mengenai navigation dasar pada Flutter. Terdapat beberapa *navigation* dasar pada Flutter, beberapa di antaranya adalah `navigator.push()` untuk perpindahan halaman dan `navigator.pop()` untuk kembali ke halaman sebelumnya.
>3. Mengenai *navigation* dengan *named routes* pada Flutter. *Navigation* ini memanfaatkan halaman-halaman yang tiap halaman tersebut memiliki alamat yang disebut dengan `route`. Beberapa *method* untuk *navigation* dengan *named routes* adalah `Navigator.pushNamed()` yang digunakan untuk perpindahan halaman dan `Navigator.pop()` yang digunakan untuk kembali ke halaman sebelumnya.

</br>

Adapun versi detail resume sebagai berikut.

### **Apa itu Navigation**

*Navigation* adalah sebuah cara, proses, atau metode untuk berpindah dari halaman satu ke halaman lain. *Navigation* biasanya terjadi ketika terdapat interaksi pada halaman sebelumnya, misalnya tombol sehingga perlu beralih ke halaman lain. *Navigation* sangat penting untuk diperhatikan dalam pengembangan aplikasi karena berhubungan langsung dengan *routing pages* dan juga alur dari aplikasi itu sendiri.

</br>


### **Navigation Dasar**

Terdapat beberapa *navigation* dasar pada Flutter, beberapa di antaranya adalah sebagai berikut.

1. **Navigator Push**
    
    `Navigator.push()` digunakan untuk perpindahan halaman.
    
2. **Navigator Pop**
    
    `Navigator.pop()` digunakan untuk kembali ke halaman sebelumnya.
    

Contoh implementasi adalah sebagai berikut.

```dart
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go To About Page'),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => AboutScreen(),
              )
            );
          }
        )
      ),
    );
  }
}
```

```dart
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Screen'),
      ),
    );
  }
}
```

</br>


Kemudian, untuk mengirim data ke halaman baru, dapat dengan menggunakan parameter pada `constructor` halaman yang baru atau dituju. Contoh implementasinya adalah sebagai berikut.

```dart
ElevatedButton(
  child: const Text('Go To About Page'),
  onPressed: () {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const AboutScreen(parameter: 'Hore'),
      )
    );
  }
)
```

```dart
class AboutScreen extends StatelessWidget {
  final String parameter;
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return . . .;
  }
}
```

</br>


### **Navigation dengan Named Routes**

*Navigation* ini memanfaatkan halaman-halaman yang tiap halaman tersebut memiliki alamat yang disebut dengan `route`. Beberapa *method* untuk *navigation* dengan *named routes* adalah sebagai berikut.

1. **Navigator Push Named**
    
    `Navigator.pushNamed()` digunakan untuk perpindahan halaman.
    
2. **Navigator Pop**
    
    `Navigator.pop()` digunakan untuk kembali ke halaman sebelumnya.
    

Selanjutnya, untuk mendaftarkan *route* dapat dilakukan dengan menambahkan `initialRoute` dan `routes` pada `MaterialApp`. Tiap *route* tersebut adalah fungsi yang membentuk halaman.

```dart
MaterialApp(
  debugShowCheckedModeBanner: false,

  initialRoute: '/',

  routes: {
    '/': (_) => const HomeScreen(),
    '/about': (_) => const AboutScreen(),
  },
)
```

</br>


Contoh implementasi dari perpindahan halaman adalah sebagai berikut.

```dart
ElevatedButton(
  child: const Text('Go To About Page'),
  onPressed: () {
    Navigator.of(context).pushNamed('/about');
  }
)
```

</br>

Kemudian, untuk mengirim data ke halaman baru, dapat dengan menggunakan *argument* saat melakukan `pushNamed`. Contoh implementasinya adalah sebagai berikut.

```dart
ElevatedButton(
  child: const Text('Go To About Page'),
  onPressed: () {
    Navigator.of(context).pushNamed(
      '/about',
			arguments: 'Hore',
    );
  }
)
```

```dart
class AboutScreen extends StatelessWidget {
	. . .

  @override
  Widget build(BuildContext context) {
		final parameter = ModalRoute.of(context)!.settings.arguments as String;

    return . . .;
  }
}
```