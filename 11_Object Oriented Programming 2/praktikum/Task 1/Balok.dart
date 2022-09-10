import 'BangunRuang.dart';

class Balok extends BangunRuang {
  Balok(super.panjang, super.lebar, super.tinggi);

  @override
  double volume() {
    return panjang * lebar * tinggi;
  }
}