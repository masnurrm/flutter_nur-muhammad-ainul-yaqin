import 'dart:io';

void main() async {
  List<int> numbers = [];

  stdout.write('Masukkan angka pengali: ');
  var multiplier = int.parse(stdin.readLineSync()!);

  stdout.write('Masukkan jumlah banyaknya angka: ');
  var count = int.parse(stdin.readLineSync()!);
  
  for (var i = 0; i < count; i++) {
    stdout.write('Masukkan angka ke-${i + 1}: ');
    numbers.add(int.parse(stdin.readLineSync()!));
  }
  
  print("List awal: $numbers");
  print("List hasil: ${await assign_list(multiplier, numbers)}");
}

assign_list(int multiplier, List numbers) async {
  List<int> multiplied = [];
  for (var i = 0; i < numbers.length; i++) {
    multiplied.add(numbers[i] * multiplier);
  }

  return multiplied;
}