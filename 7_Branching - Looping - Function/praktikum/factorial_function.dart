import 'dart:io';

double factorial(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

void main() {
  stdout.write('Masukkan angka: ');
  var number = int.parse(stdin.readLineSync()!);
  int numberA = 10;
  int numberB = 20;
  int numberC = 30;

  print(factorial(number));
  print(factorial(numberA));
  print(factorial(numberB));
  print(factorial(numberC));
}