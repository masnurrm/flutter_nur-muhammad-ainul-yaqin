// Buatlah 3 buah variabel yang berisi string, lalu sambungkan seluruh string tersebut, dan tampilkan pada layar!

import 'dart:io';

String mergeString(String string1, String string2, String string3) {
  return string1 + ' ' + string2 + ' ' + string3;
}

void main() {
  stdout.write('Masukkan kata pertama: ');
  String? string1 = stdin.readLineSync();
  stdout.write('Masukkan kata kedua: ');
  String? string2 = stdin.readLineSync();
  stdout.write('Masukkan kata ketiga: ');
  String? string3 = stdin.readLineSync();

  stdout.write('Hasil gabungan kata: ${mergeString(string1!, string2!, string3!)}');
}