# **(19) Dialog Bottom Sheet**

*File* ini merupakan resume dari materi *section* 19 pada program Flutter. From Zero to Hero dari Alterra Academy pada Studi Independen Bersertifikat Batch 3 tahun 2022.

## **Data Diri**

| Nama                     | Kelas      | Nomor      |
|--------------------------|------------|------------|
| Nur Muhammad Ainul Yaqin | Flutter A  | 20         | 

</br>

Di section 19 (sembilan belas) ini saya belajar tentang **cara membuat aplikasi *task management* sederhana dengan menggunakan Flutter.**


> **TL;DR**
> 
> Terdapat 3 (tiga) hal utama yang saya pelajari pada *section* ini sebagai berikut.
>
>1. Mengenai pembuatan *basic* UI *layout* pada aplikasi *task management* dengan menggunakan Flutter yang menyertakan implementasi `model` dan `provider`.
>2. Mengenai `AlertDialog` pada Flutter. `AlertDialog` digunakan pada tampilan Android dan berasal dari *material design*. `AlertDialog` digunakan untuk menginformasikan *user* tentang situasi tertentu dan bisa digunakan untuk mendapatkan *input* dari *user*. Pada implementasinya, dibutuhkan *helper method* `showDialog`.
>3. Mengenai *Bottom Sheet* pada Flutter. *Bottom Sheet* sebenarnya mirip seperti dialog, tetapi muncul dari bawah layar aplikasi. *Bottom Sheet* menggunakan fungsi bawaan Flutter yaitu `showModalBottomSheet`. Penggunaannya membutuhkan dua properti, yaitu `context` dan `builder`.

</br>

Adapun versi detail resume sebagai berikut.

### **Aplikasi Task Management**

*Aplikasi task management* merupakan aplikasi untuk menambahkan dan menghapus kegiatan, contohnya seperti **Google Keep**. Langkah-langkah pembuatan aplikasi *task management* dengan Flutter adalah sebagai berikut.

1. **TODO 1: Membuat *model* untuk informasi yang akan disimpan.**
    
    Membuat folder `models` dan di dalamnya buat *file* dart baru bernama `task_model.dart`.
    
    ```dart
    class TaskModel {
    	final String id;
    	final String taskName;
    
    	TaskModel({
    		required this.id,
    		required this.taskName,
    	});
    }
    ```
    
    </br>
    

2. **TODO 2: Membuat *Task Screen*.** 
    
    Membuat folder `screens` di dalamnya dan buat *file* dart baru bernama `task_screen.dart`.
    
    ```dart
    class TaskScreen extends StatelessWidget {
      const TaskScreen({super.key});
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Task Management'),
            centerTitle: true,
          ),
        );
      }
    }
    ```
    
    </br>
    
3. **TODO 3: Membuat *Empty Screen*.**
    
    Membuat *file* dart baru bernama `empty_task_screen.dart` di folder `screens`.
    
    ```dart
    class EmptyTaskScreen extends StatelessWidget {
      const EmptyTaskScreen({super.key});
    
      @override
      Widget build(BuildContext context) {
        return Container(color: Colors.amber,);
      }
    }
    ```
    
    </br>
    

4. **TODO 4: Tambahkan *package* `provider` di `pubspec.yaml`.**
    
    ```yaml
    dependencies:
    	flutter:
    		sdk: flutter
    	provide: ^6.0.2
    ```
    

    </br>
    
5. **TODO 5: Membuat *Task Manager*.**
    
    Membuat *file* dart baru bernama `task_manager.dart`di dalam folder `models`. Tambahkan *method* `deleteTask` dan `addTask`.
    
    ```dart
    class TaskManager extends ChangeNotifier {
      final List<TaskModel> _tasksModels = [];
    
      List<TaskModel> get tasksModels => List.unmodifiable(_tasksModels);
    
      void addTask(TaskModel task) {
        _tasksModels.add(task);
        notifyListeners();
      }
    
      void removeTask(int index) {
        _tasksModels.removeAt(index);
        notifyListeners();
      }
    }
    ```
    
    </br>
    

6. **TODO 6: Pada main.dart, tambahkan `TaskManager` sebagai *provider*.**
    
    ```dart
    Widget build(BuildContext context) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => TaskManager()),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Task Management',
          home: TaskScreen(),
        )
      );
    }
    ```
    
    </br>
    

7. **TODO 7: Pada `task_screen.dart`, membuat fungsi `buildTaskScreen`.**
    
    Fungsi ini akan me-*return* antara `Task Screen` yang ada datanya atau yang kosong dan panggil fungsinya di `body`.
    
    ![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/2adf768a-46c0-400b-9474-03c42345cc79/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220929%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220929T220233Z&X-Amz-Expires=86400&X-Amz-Signature=ebfb063c5dd276b4872c5fd9da1f41fa7f368693bee8ca97a09692f70602d38c&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)
    
    </br>
    
    
8. **TODO 8: Membuat *Task Item Screen*.**
    
    Membuat *file* dart baru bernama `task_item_screen.dart` di dalam folder `screens` dan tambahkan properti `onCreate`.
    
    ![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/9dc027d6-ad47-417d-9482-f2a0fa3b7779/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220929%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220929T220244Z&X-Amz-Expires=86400&X-Amz-Signature=f0ecb4d76c428b1ee9b0fa5a7b385c592b81a3b600021a3faeaf50abe064818d&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)
    
    </br>
    

9. **TODO 9: Pada `task_screen.dart`, buat `FloatingAction` *Button*.**
    
    *Button* ini digunakan untuk navigasi ke `TaskItemScreen`.
    
    ![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/2eb3405d-8a50-4a6b-a61e-13f22335f3e4/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220929%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220929T220257Z&X-Amz-Expires=86400&X-Amz-Signature=9432d7efd0a7c9b0225210089f7f3667cd66accd08c5a94b8afbd85c799ab410&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)
    
    </br>
    
    
10. **TODO 10: Pada `task_item_screen.dart`, tambahkan *state* properti, `initState`, dan `dispose`.**
    
    ![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/fcf2a772-3487-4327-93c5-06fe670c1b35/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220929%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220929T220306Z&X-Amz-Expires=86400&X-Amz-Signature=c0536ee7ea8923904955c0da6b1b0d8a1a814c34e281ff28aae1848d1ff4b973&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)
    
    </br>
    
    
11. **TODO 11: Pada `task_item_screen.dart`, buat `buildNameField` dan panggil fungsinya di dalam `ListView`.**
    
    ![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/d6e84a71-234b-415a-8570-352cc1021143/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220929%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220929T220316Z&X-Amz-Expires=86400&X-Amz-Signature=a73ae5d7015d1367b22d7ae19407aac102291d3f04fedd1d0b0bfe3059746ae6&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)
    
    </br>
    
    
12. **TODO 12: Pada `task_item_screen.dart`, buat `buildButton` dan panggil fungsinya di dalam `ListView`.**
    
    ![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/ac3c3917-0039-4b11-8934-07fd968a7e90/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220929%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220929T220327Z&X-Amz-Expires=86400&X-Amz-Signature=7cf29904dd9f5777740d79164448091d8374b7e5cb75c4b05fe9478ca9c9becf&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)
    
    </br>
    
    
13. **TODO 13: Buat `TaskItemCard`.**
    
    Buat folder baru bernama `components`, lalu buat *file* dart baru bernama `task_item_card.dart` di dalamnya.
    
    ![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/9bcdaef6-a4a0-4cde-aca0-c4feeaa18f72/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220929%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220929T220336Z&X-Amz-Expires=86400&X-Amz-Signature=97340addea50d59b31039ef7471d20cb3f322fa403be7972c197df9b20d73fdf&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)
    
    </br>
    
    
14. **TODO 14: Pada `task_item_screen.dart`, tambahkan *call back handler* di `ElevatedButton` pada `buildButton`, dan tambahkan *package* `uuid`.**
    
    ![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/039fabdd-6052-463c-8874-7b3ea4ebd2fd/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220929%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220929T220347Z&X-Amz-Expires=86400&X-Amz-Signature=a774a2074896ba8a4eaac98a1c1c2e1b4f6c2c89fd152399e98156dd25a4e6d1&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)
    
    </br>
    
    
15. **TODO 15: Membuat *Task List Screen*.**
    
    Pada folder `screens`, buat *file* dart baru bernama `task_list_screen.dart`. Tambahkan di `buildTaskScreen` pada `task_screen.dart`.
    
    ![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/dcef0020-6fb4-45e0-b006-35c909b75a83/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220929%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220929T220356Z&X-Amz-Expires=86400&X-Amz-Signature=b2a20d30c1782a91329ae5970ffed73bdcf0ce89e506fca971a58af501933657&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)
    
    </br>
    
    
16. **TODO 16: Pada `task_list_screen.dart`, tambahkan properti yang dibutuhkan pada `TaskItemCard` untuk melihat *task* yang sudah dibuat.**
    
    ![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/d40c2941-2cdb-4f5c-986d-ae6e19dd7ac8/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220929%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220929T220410Z&X-Amz-Expires=86400&X-Amz-Signature=f77e531eae0b4406af06ed6675c4819ff341fc99a4e88298672a66683983800b&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)
    
    </br>
    

### **AlertDialog**

`AlertDialog` digunakan pada tampilan Android dan berasal dari *material design*. `AlertDialog` digunakan untuk menginformasikan *user* tentang situasi tertentu dan bisa digunakan untuk mendapatkan *input* dari *user*. Pada implementasinya, dibutuhkan *helper method* `showDialog`.

17. **TODO 17: Pada `task_item_card.dart`, tambahkan `AlertDialog`.**
    
    Panggil fungsi `showDialog` di dalam fungsi `onPressed` pada `IconButton`. Fungsi `showDialog` sendiri membutuhkan `context` dan `builder`, dengan `builder` tersebut akan me-*return* `AlertDialog`.
    
    `AlertDialog` menyediakan properti seperti `content` dan `actions`. `Content` bisa dimasukkan *widget* seperti *text*, gambar, dan animasi gambar. `Actions` bisa ditambahkan *button* untuk menerima respon dari *user*.
    
    ![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/0ff84232-c820-4e78-95c4-2360d03d052c/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220929%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220929T220422Z&X-Amz-Expires=86400&X-Amz-Signature=9de08571245d56566a3a64e4f927cceeb87d81460a7b18f6e8c54fa1eb7daabc&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)
    
    </br>
    
    
18. **TODO 18: Pada `task_item_card.dart`, buat properti `onPressed`.**
    
    ![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/55f40a4b-744a-4629-be10-1acec783a634/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220929%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220929T220431Z&X-Amz-Expires=86400&X-Amz-Signature=06b3945a6adca9370bde0fb8e1d2a11dc64c97b9be1fb05f98171bdcfb562083&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)
    
    </br>
    
    
19. **TODO 19: Pada `task_list_screen.dart`, tambahkan fungsi `onPressed` pada `TaskItemCard`.**
    
    Pada `body`, fungsi ditambahkan *method* `deleteTask`, `Navigator.pop(context)`, dan `ScaffoldMessenger`. 
    
    ![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/b2a0cadb-7fdf-491a-b61b-778e6506a6a4/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220929%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220929T220439Z&X-Amz-Expires=86400&X-Amz-Signature=0a072c4a66b6c6451934b467a192c4b6d492cc2f19512bf9d788a12fede0e861&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)
    
    </br>
    
    
    Ketika *icon delete* ditekan, maka akan menampilkan *alert* dialog sebagai berikut.
    
    ![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/12c142e5-3cae-4320-8a58-bd009f596e44/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220929%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220929T220450Z&X-Amz-Expires=86400&X-Amz-Signature=ded40ac319a70dc916c381907b2265d8100adad71d3721a0dbeecf036b8758db&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)
    
    </br>
    
    

## **Bottom Sheet**

*Bottom Sheet* sebenarnya mirip seperti dialog, tetapi muncul dari bawah layar aplikasi. *Bottom Sheet* menggunakan fungsi bawaan Flutter yaitu `showModalBottomSheet`. Penggunaannya membutuhkan dua properti, yaitu `context` dan `builder`.

20. **TODO 20: Pada `task_screen.dart`, buat *Bottom Sheet*.**
    
    ![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/818db525-95f9-40d8-a39d-a062fcf315d6/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220929%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220929T220502Z&X-Amz-Expires=86400&X-Amz-Signature=cd1aa2dc77c38a6820d5af1ea2406b14bf712382bae4f434864235ec8f2f2a0b&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)
    
    </br>
    
    

21. **TODO 21: Buat *file* dart baru bernama `profile_sheet.dart` di dalam folder `components` dan buat konten-kontennya.**
    
    ![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/1e7b6e5a-fb1c-4208-a146-f420d8be6c5e/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220929%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220929T220513Z&X-Amz-Expires=86400&X-Amz-Signature=b80ef9fd7f250e0a5c8f8f17d2297e3f3bdafc3a87793879f3c863ac121c2376&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)
    
    </br>
    
    

22. **TODO 22: Pada `task_screen.dart`, ganti `Container` pada *builder* `showModalBottomSheet` menjadi `ProfileSheet()`.**
    
    ![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/ff37f37f-31c0-4bb6-a21f-d0ba6bb48253/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220929%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220929T220520Z&X-Amz-Expires=86400&X-Amz-Signature=6078b120fff771e7d80521f5455ee3bed67388bb2bda09a7d109b48f419a630a&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)

    
    </br>
    
    

*Source code* dari *section* 19 dapat diakses pada tautan [**https://bit.ly/3HtkP09**](https://bit.ly/3HtkP09).