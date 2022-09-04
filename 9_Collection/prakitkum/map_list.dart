import 'dart:io';

void main() {
  List<List> data = [
    ["Nama", "TTL", "Jurusan"],
    ["Nur Muhammad", "Madiun, 22 April 2001", "Teknik Informatika ITS"]
  ];

  Map<String, String> data_map = {};

  var count = data[0].length;

  for (var i = 0; i < count; i++) {
    for (var j = 0; j < count; j++) {
      data_map[data[0][j]] = data[1][j];
    }
  }

  print("Informasi adalah sebagai berikut: ");
  print(data_map);
}
















