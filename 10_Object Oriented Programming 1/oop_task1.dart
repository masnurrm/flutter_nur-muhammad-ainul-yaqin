class Hewan {
  var berat;
  var namaHewan; // Saya tambahkan untuk mendukung property muatan yang menginginkan nama hewan dalam list muatan
}

class Mobil {
  var kapasitas = 5000; // total berat maksimum muatan dalam kg
  List<String> muatan = []; // list data hewan yang menjadi muatan

  void tambahMuatan(int berat, String namaHewan) {
    if (kapasitas - berat >= 0) {
      kapasitas -= berat;
      muatan.add("$namaHewan ${berat.toString()} kg");
      print("[Update] Hewan sukses ditambahkan pada muatan Mobil");
      print("Isi muatan mobil: $muatan\n");
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

