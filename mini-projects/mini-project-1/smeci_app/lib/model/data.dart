class Dokumen{
  Dokumen();

  List<Map<String, dynamic>> data = [
    {
      "name": "Dokumen Satu",
      "waktu unggah" : "10/09/2022",
      "verifikasi": {
        "Terkirim" : true,
        "Terverifikasi" : true
      }
    },
    {
      "name": "Dokumen Dua",
      "waktu unggah" : "10/09/2022",
      "verifikasi": {
        "Terkirim" : true,
        "Terverifikasi" : false
      }
    },
    {
      "name": "Dokumen Tiga",
      "waktu unggah" : "10/09/2022",
      "verifikasi": {
        "Terkirim" : false,
        "Terverifikasi" : false
      }
    },
  ];
}