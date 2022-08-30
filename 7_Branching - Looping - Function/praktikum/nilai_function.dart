import 'dart:io';

String nilai_check(int nilai) {
  if (nilai > 70) {
    return 'A';
  } else if (nilai > 40) {
    return 'B';
  } else if (nilai > 0) {
    return 'C';
  } else {
    return ' ';
  }
}

void main() {
  stdout.write('Masukkan nilai: ');
  var nilai = int.parse(stdin.readLineSync()!);

  print(nilai_check(nilai));
}