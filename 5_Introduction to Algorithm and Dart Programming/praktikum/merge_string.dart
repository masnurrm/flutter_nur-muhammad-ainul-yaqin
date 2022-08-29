import 'dart:io';

String mergeString(String string1, String string2) {
  return string1 + string2;
}

void main() {
  stdout.write('Masukkan kata pertama: ');
  String? string1 = stdin.readLineSync();
  stdout.write('Masukkan kata kedua: ');
  String? string2 = stdin.readLineSync();
  stdout.write('Hasil gabungan kata: ');
  print(mergeString(string1!, string2!));
}