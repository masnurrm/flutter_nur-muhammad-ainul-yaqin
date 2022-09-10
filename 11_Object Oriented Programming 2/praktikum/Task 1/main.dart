import 'dart:io';

import 'Balok.dart';
import 'Kubus.dart';

void main() {
  var bangun1 = Kubus(10.0, 5.0, 20.0, 15.0);
  print(bangun1.volume());

  var bangun2 = Balok(10.0, 5.0, 20.0);
  print(bangun2.volume());
}