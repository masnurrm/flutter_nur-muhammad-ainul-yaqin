import 'Matematika.dart';

class FaktorPersekutuanTerbesar extends Matematika {
  int x;
  int y;
  
  FaktorPersekutuanTerbesar(this.x, this.y) : super(x, y);

  @override
  int hasil() {
    int z = 0;
    while (y != 0) {
      z = x % y;
      x = y;
      y = z;
    }
    return x;
  }
}