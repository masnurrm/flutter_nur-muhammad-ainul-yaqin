import 'BangunRuang.dart';

class Kubus extends BangunRuang {
  var sisi;
  Kubus(super.panjang, super.lebar, super.tinggi, this.sisi);

  @override
  double volume() {
    return sisi * sisi * sisi;
  }
    
}