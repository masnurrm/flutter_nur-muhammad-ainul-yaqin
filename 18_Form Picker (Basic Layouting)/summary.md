# **(18) Form Picker (Basic Layouting)**

*File* ini merupakan resume dari materi *section* 18 pada program Flutter. From Zero to Hero dari Alterra Academy pada Studi Independen Bersertifikat Batch 3 tahun 2022.

## **Data Diri**

| Nama                     | Kelas      | Nomor      |
|--------------------------|------------|------------|
| Nur Muhammad Ainul Yaqin | Flutter A  | 20         | 

</br>

Di section 18 (delapan belas) ini saya belajar tentang **pengaturan *layout* pada Flutter beserta beberapa *behavior* unik di dalamnya, serta mengenai beberapa *advance user input (picker)*.**


> **TL;DR**
> 
> Terdapat 3 (tiga) hal utama yang saya pelajari pada *section* ini sebagai berikut.
>
>1. Mengenai *basic* UI *layout* pada Flutter. *Basic* UI *layout* pada Flutter sendiri sebenarnya terbagi menjadi 2 bagian besar, yaitu `Row` dan `Column`. `Row` meletakkan *widget children*-nya berjajar secara horizontal, sedangkan `Column` meletakkan *widget* *children*-nya berurut secara vertikal. 
>2. Mengenai *axis alignment* pada Flutter. Properti `MainAxisAlignment` digunakan `Row` dan `Column` untuk memposisikan *children* mereka di *extra space* yang ada. Properti `CrossAxisAlignment` digunakan `Row` dan `Column` untuk memposisikan *children* mereka pada *cross axis*. *Cross axis* dari `Row` adalah vertikal, sedangkan *cross axis* dari `Column` adalah horizontal. 
>3. Mengenai `Expanded` *widget* pada Flutter. `Expanded` *widget* berfungsi untuk membungkus *widget* lain sehingga ukuran dari *child* `Expanded` *widget* akan dipaksa untuk memenuhi ruang yang tersedia. `Expanded` *widget* sangat berguna untuk membuat aplikasi yang responsif. *Widget* ini harus berada dalam turunan *parent widget* `Row` dan `Column`, serta memiliki *default value* berupa `FlexFit.tight`. Perubahan ukuran pada *widget* ini ditentukan dengan properti `Flex`.
>4. Mengenai *Form Picker* untuk *User Input*. Terdapat beberapa *form picker* yang disediakan oleh Flutter, beberapa di antaranya adalah *date picker, color picker,* dan *file picker*.

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

![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/eb5d3b9a-5bf4-4cb7-93fd-329989f14f03/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220928%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220928T073439Z&X-Amz-Expires=86400&X-Amz-Signature=b824e1982bd6fe0e7842cab9145d32cb784832a880a9acc77fa39245b5b5d1db&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)

![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/ce8533fd-1ee7-46b7-8fcd-0d33bc260c4f/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220928%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220928T073444Z&X-Amz-Expires=86400&X-Amz-Signature=8043776255686928bcd1500d80330d4cbd79212befdd3c5b0d9fad87311a2b4f&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)

### **MainAxisAlignment**

Properti `MainAxisAlignment` digunakan `Row` dan `Column` untuk memposisikan *children* mereka di *extra space* yang ada. `MainAxisAlignment` memiliki 6 *values* sebagai berikut.

1. `MainAxisAlignment.start`
2. `MainAxisAlignment.end`
3. `MainAxisAlignment.center`
4. `MainAxisAlignment.spaceBetween`
5. `MainAxisAlignment.spaceEvenly`
6. `MainAxisAlignment.spaceAround`

Penggunaan setiap *value* dari `MainAxisAlignment` ditunjukkan sebagai berikut.

![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/c0bfa50a-0cba-4aa0-9062-d82d68e44f23/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220928%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220928T073634Z&X-Amz-Expires=86400&X-Amz-Signature=0e256a014faf512733950cfe0ec0fa59129c98837c2556f84348a0960f658649&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)

</br>

### **CrossAxisAlignment**

Properti `CrossAxisAlignment` digunakan `Row` dan `Column` untuk memposisikan *children* mereka pada *cross axis*. *Cross axis* dari `Row` adalah vertikal, sedangkan *cross axis* dari `Column` adalah horizontal. `CrossAxisAlignment` memiliki 5 *values* sebagai berikut.

1. `CrossAxisAlignment.start`
2. `CrossAxisAlignment.end`
3. `CrossAxisAlignment.center`
4. `CrossAxisAlignment.stretch`
5. `CrossAxisAlignment.baseline`

Penggunaan setiap *value* dari `CrossAxisAlignment` ditunjukkan sebagai berikut.

![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/6ad7203f-49c8-4bb8-989f-0bc7ea5bc3c2/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220928%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220928T073650Z&X-Amz-Expires=86400&X-Amz-Signature=c8242a9a3a7b26b217c72da437a71a341c755e4d9fe1c8e959e84d9f5f0b05ab&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)

</br>

### **Flexible Widget**

`Flexible` *widget* berfungsi untuk membungkus *widget* lain sehingga *child* dari `Flexible` *widget* menjadi fleksibel atau *resizeable*. `Flexible` *widget* sangat berguna untuk membuat aplikasi yang responsif. 

Penggunaan `Flexible` *widget* sendiri harus berada dalam turunan *parent* *widget* `Row` atau `Column`. Perubahan ukuran di dalam `Flexible` *widget* ditentukan dengan properti `Fit` dan `Flex`.

**Fit Properti**

`Fit` properti digunakan untuk menentukan apakah suatu `Flexible` *widget* memenuhi *extra space* yang tersedia di *main axis*-nya atau tidak. `Fit` properti menerima nilai *values* berupa `FlexFit.loose` ataupun `FlexFit.tight`. *Value* dari `FlexFit.loose` akan memiliki ukuran minimum, sedangkan `FlexFit.tight` akan memiliki ukuran maksimum. Penggunaan `Fit` properti ditunjukkan sebagai berikut.

![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/ee5af038-3d53-41d1-a109-86134a922361/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220928%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220928T072352Z&X-Amz-Expires=86400&X-Amz-Signature=f9aa433577eb8b39e652726558ce6abf3368d92c9602f2bde9091b8498f9efa1&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)


</br>

**Flex Properti**

`Flex` properti digunakan untuk menentukan perbandingan ukuran dari *child widget*-nya. `Flex` properti menerima *values* berupa `integer` dan membandingkan nilainya dengan `Flex` properti lain. Formula dari `Flex` properti dapat ditulis sebagai berikut. 

```latex
remaining space * (flex / totalOfAllFlexValues)
```

Penggunaan `Flex` properti ditunjukkan sebagai berikut.

![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/e30f080e-767f-4280-91f8-9669aab9f005/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220928%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220928T073723Z&X-Amz-Expires=86400&X-Amz-Signature=1a6af5954c2db64859832070b6648df1406ec85956d62d02bf724c0070c0c1bf&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)

Selain itu, terdapat juga penggunaan `Flexible` tanpa menggunakan *fixed height* dan *width* sebagai berikut.

![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/ccb345dd-a34b-408b-a9c1-09bed63d9862/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220928%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220928T073733Z&X-Amz-Expires=86400&X-Amz-Signature=6769fc6b0b1674d65938db4f5e477fbbdb0ae3c7b6cce3ed9b316e34dff8bff9&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)


</br>

### **Expanded Widget**

`Expanded` *widget* berfungsi untuk membungkus *widget* lain sehingga ukuran dari *child* `Expanded` *widget* akan dipaksa untuk memenuhi ruang yang tersedia. `Expanded` *widget* sangat berguna untuk membuat aplikasi yang responsif. *Widget* ini harus berada dalam turunan *parent widget* `Row` dan `Column`, serta memiliki *default value* berupa `FlexFit.tight`. Perubahan ukuran pada *widget* ini ditentukan dengan properti `Flex`. Berikut ditunjukkan beberapa *behavior* dari `Expanded` *widget* sebagai berikut.

![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/62a10c95-36eb-4c58-97db-a13d6b17ee08/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220928%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220928T073743Z&X-Amz-Expires=86400&X-Amz-Signature=d3009bbc1ccdec0b5f14937e611a7f0d9a5eddcaf8effa96b516b63db6b8fae0&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)

![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/338c3c27-0fa5-4749-94c1-bf3f51baf7db/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220928%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220928T073753Z&X-Amz-Expires=86400&X-Amz-Signature=1976d1b3e5525c8cfd68251bc3a0f38612cba05421611ee000ecf5757be3a7b7&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)

Berikut ditunjukkan juga perbedaan *behavior* antara `Flexible` dan `Expanded` *widget*.

![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/dc115160-6147-4c9a-975c-a9309454470e/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220928%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220928T073801Z&X-Amz-Expires=86400&X-Amz-Signature=b5919b3af8bb63c98713213384e5ab980d128f26f5cd9e2ad22c27a22613bd6a&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)


</br>

### **Demo App: Implementasi Flutter *Basic Layout***

Terdapat 4 bagian yang disusun ke dalam *column* sebagai berikut.

***Basic* UI**

![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/feeed826-fc5a-46cf-9e94-ef6ec8741556/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220928%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220928T073811Z&X-Amz-Expires=86400&X-Amz-Signature=df60ab7e16adc3b1ace14813c7c4f1b78cfda15e19fc08144cf83b478bcc7cc5&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)

</br>

**Bagian 1: *Image section*.**

![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/65172e3f-5c71-4623-9d27-1069e76a4b05/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220928%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220928T073820Z&X-Amz-Expires=86400&X-Amz-Signature=d578bd52bfdea8cc9096642f2b34a35f9d983f0507463040ccf02ec5a14875fc&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)

</br>

**Bagian 2: *Title section*, *row* yang memiliki 3 *children*, *column text*, *icon star*, dan *text number*.**

![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/ce1834f1-e82d-48a8-bb78-9e614a2a7dc5/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220928%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220928T073836Z&X-Amz-Expires=86400&X-Amz-Signature=661f5f838bc9b4280237a0db301d903a1b6421973f7bf33ba84965c5a363a3b9&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)

</br>

**Bagian 3: *Button section*, *row* yang memiliki 3 *children*, *column icon*, dan *text*.**

![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/f368d148-83b3-4ee0-8a8e-2aa18a1d0f4f/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220928%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220928T073851Z&X-Amz-Expires=86400&X-Amz-Signature=07284400a2c099d152942cf8f173aeeec67f3d2479392b59acbd07b04e0441ae&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)

</br>

**Bagian 4: *Text section*.**

![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/67f1e913-58bd-4a0b-8222-cf1d360b4565/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220928%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220928T073901Z&X-Amz-Expires=86400&X-Amz-Signature=e7172ecc57d67ca8e6a5b5848a4073323006848b88aff7b186991acd93d1e017&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)

</br>

Sehingga, didapatkan hasil akhir sebagai berikut.

![Untitled](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/f1f9b580-ccf7-4082-a5a5-f8c1c49c4284/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220928%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220928T073909Z&X-Amz-Expires=86400&X-Amz-Signature=7006f43b7ef552b2061672d437b6d959e0675e1846823bbcf475c532b23cfba9&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)

</br>

### **Form Picker (Advance User Input)**

Terdapat beberapa *form picker* yang disediakan oleh Flutter, beberapa di antaranya adalah sebagai berikut.

1. **Date Picker**
    
    *Widget* dimana *user* bisa memasukkan tanggal. *Date picker* dapat dibuat dengan menggunakan fungsi bawaan `showDatePicker`.
    
2. **Color Picker**
    
    *Widget* dimana user bisa memilih *color*. *Color picker* dapat dibuat dengan menggunakan *package* `flutter_collorpicker`.
    
3. **File Picker**
    
    *Widget* yang digunakan untuk mengakses *storage*, memilih *file*, dan membuka *file*. File *picker* dapat dibuat dengan menggunakan *package* `file_picker` dan `open_file`.