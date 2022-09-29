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
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/2adf768a-46c0-400b-9474-03c42345cc79/Untitled.png)
    
    </br>
    
    
8. **TODO 8: Membuat *Task Item Screen*.**
    
    Membuat *file* dart baru bernama `task_item_screen.dart` di dalam folder `screens` dan tambahkan properti `onCreate`.
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/9dc027d6-ad47-417d-9482-f2a0fa3b7779/Untitled.png)
    
    </br>
    

9. **TODO 9: Pada `task_screen.dart`, buat `FloatingAction` *Button*.**
    
    *Button* ini digunakan untuk navigasi ke `TaskItemScreen`.
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/2eb3405d-8a50-4a6b-a61e-13f22335f3e4/Untitled.png)
    
    </br>
    
    
10. **TODO 10: Pada `task_item_screen.dart`, tambahkan *state* properti, `initState`, dan `dispose`.**
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/fcf2a772-3487-4327-93c5-06fe670c1b35/Untitled.png)
    
    </br>
    
    
11. **TODO 11: Pada `task_item_screen.dart`, buat `buildNameField` dan panggil fungsinya di dalam `ListView`.**
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/d6e84a71-234b-415a-8570-352cc1021143/Untitled.png)
    
    </br>
    
    
12. **TODO 12: Pada `task_item_screen.dart`, buat `buildButton` dan panggil fungsinya di dalam `ListView`.**
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/ac3c3917-0039-4b11-8934-07fd968a7e90/Untitled.png)
    
    </br>
    
    
13. **TODO 13: Buat `TaskItemCard`.**
    
    Buat folder baru bernama `components`, lalu buat *file* dart baru bernama `task_item_card.dart` di dalamnya.
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/9bcdaef6-a4a0-4cde-aca0-c4feeaa18f72/Untitled.png)
    
    </br>
    
    
14. **TODO 14: Pada `task_item_screen.dart`, tambahkan *call back handler* di `ElevatedButton` pada `buildButton`, dan tambahkan *package* `uuid`.**
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/039fabdd-6052-463c-8874-7b3ea4ebd2fd/Untitled.png)
    
    </br>
    
    
15. **TODO 15: Membuat *Task List Screen*.**
    
    Pada folder `screens`, buat *file* dart baru bernama `task_list_screen.dart`. Tambahkan di `buildTaskScreen` pada `task_screen.dart`.
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/dcef0020-6fb4-45e0-b006-35c909b75a83/Untitled.png)
    
    </br>
    
    
16. **TODO 16: Pada `task_list_screen.dart`, tambahkan properti yang dibutuhkan pada `TaskItemCard` untuk melihat *task* yang sudah dibuat.**
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/d40c2941-2cdb-4f5c-986d-ae6e19dd7ac8/Untitled.png)
    
    </br>
    

### **AlertDialog**

`AlertDialog` digunakan pada tampilan Android dan berasal dari *material design*. `AlertDialog` digunakan untuk menginformasikan *user* tentang situasi tertentu dan bisa digunakan untuk mendapatkan *input* dari *user*. Pada implementasinya, dibutuhkan *helper method* `showDialog`.

17. **TODO 17: Pada `task_item_card.dart`, tambahkan `AlertDialog`.**
    
    Panggil fungsi `showDialog` di dalam fungsi `onPressed` pada `IconButton`. Fungsi `showDialog` sendiri membutuhkan `context` dan `builder`, dengan `builder` tersebut akan me-*return* `AlertDialog`.
    
    `AlertDialog` menyediakan properti seperti `content` dan `actions`. `Content` bisa dimasukkan *widget* seperti *text*, gambar, dan animasi gambar. `Actions` bisa ditambahkan *button* untuk menerima respon dari *user*.
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/0ff84232-c820-4e78-95c4-2360d03d052c/Untitled.png)
    
    </br>
    
    
18. **TODO 18: Pada `task_item_card.dart`, buat properti `onPressed`.**
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/55f40a4b-744a-4629-be10-1acec783a634/Untitled.png)
    
    </br>
    
    
19. **TODO 19: Pada `task_list_screen.dart`, tambahkan fungsi `onPressed` pada `TaskItemCard`.**
    
    Pada `body`, fungsi ditambahkan *method* `deleteTask`, `Navigator.pop(context)`, dan `ScaffoldMessenger`. 
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/b2a0cadb-7fdf-491a-b61b-778e6506a6a4/Untitled.png)
    
    </br>
    
    
    Ketika *icon delete* ditekan, maka akan menampilkan *alert* dialog sebagai berikut.
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/12c142e5-3cae-4320-8a58-bd009f596e44/Untitled.png)
    
    </br>
    
    

## **Bottom Sheet**

*Bottom Sheet* sebenarnya mirip seperti dialog, tetapi muncul dari bawah layar aplikasi. *Bottom Sheet* menggunakan fungsi bawaan Flutter yaitu `showModalBottomSheet`. Penggunaannya membutuhkan dua properti, yaitu `context` dan `builder`.

20. **TODO 20: Pada `task_screen.dart`, buat *Bottom Sheet*.**
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/818db525-95f9-40d8-a39d-a062fcf315d6/Untitled.png)
    
    </br>
    
    

21. **TODO 21: Buat *file* dart baru bernama `profile_sheet.dart` di dalam folder `components` dan buat konten-kontennya.**
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/1e7b6e5a-fb1c-4208-a146-f420d8be6c5e/Untitled.png)
    
    </br>
    
    

22. **TODO 22: Pada `task_screen.dart`, ganti `Container` pada *builder* `showModalBottomSheet` menjadi `ProfileSheet()`.**
    
    ![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/ff37f37f-31c0-4bb6-a21f-d0ba6bb48253/Untitled.png)

    
    </br>
    
    

*Source code* dari *section* 19 dapat diakses pada tautan [**https://bit.ly/3HtkP09**](https://bit.ly/3HtkP09).