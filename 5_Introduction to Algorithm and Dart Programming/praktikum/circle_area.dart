import 'dart:io';

double circleArea(double radius) {
  double pi = 3.14;
  return pi * radius * radius;
}

void main() {
  stdout.write('Masukkan radius: ');
  var radius = double.parse(stdin.readLineSync()!);
  var area = circleArea(radius);
  stdout.write('Luas lingkaran adalah $area satuan luas');
}
