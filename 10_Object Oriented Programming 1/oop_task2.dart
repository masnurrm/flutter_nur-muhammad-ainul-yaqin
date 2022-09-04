class Hewan {
  var berat;
  var namaHewan; // Saya tambahkan untuk mendukung property muatan yang menginginkan nama hewan dalam list muatan
}

class Mobil {
  var kapasitas = 5000; // total berat maksimum muatan dalam kg
  List<String> muatan = []; // list data hewan yang menjadi muatan
  
  // Saya tambahkan untuk mendukung property muatan yang menginginkan total berat muatan mobil saat ini
  // Mendukung Task 2 yang meminta menghitung total muatan yang diangkut mobil
  var totalMuatan = 0; 

  void tambahMuatan(int berat, String namaHewan) {
    if (kapasitas - berat >= 0) {
      kapasitas -= berat;
      totalMuatan += berat;
      muatan.add("$namaHewan ${berat.toString()} kg");

      print("[Update] Hewan sukses ditambahkan pada muatan Mobil");
      print("Total muatan mobil saat ini   : $totalMuatan kg");
      print("Isi muatan mobil saat ini     : $muatan\n");
    } else {
      print("[Warning] Muatan melebihi kapasitas");
    }
  }
}

void main() {
  var hewan1 = Hewan();
  hewan1.berat = 1000;
  hewan1.namaHewan = "Sapi Glonggongan";
  
  var hewan2 = Hewan();
  hewan2.berat = 500;
  hewan2.namaHewan = "Kambing Kurban";

  var mobil = Mobil();
  mobil.tambahMuatan(hewan1.berat, hewan1.namaHewan);
  mobil.tambahMuatan(hewan2.berat, hewan2.namaHewan);
}

