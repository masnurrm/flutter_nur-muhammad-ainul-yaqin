import 'dart:io';

import 'FaktorPersekutuanTerbesar.dart';
import 'KelipatanPersekutuanTerkecil.dart';

void main() {
  var fpb = FaktorPersekutuanTerbesar(10, 4);
  print(fpb.hasil());

  var kpk = KelipatanPersekutuanTerkecil(10, 4);
  print(kpk.hasil());
}