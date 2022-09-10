import 'Matematika.dart';

class FaktorPersekutuanTerbesar extends Matematika {
  int x;
  int y;
  
  FaktorPersekutuanTerbesar(this.x, this.y) : super(x, y);

  @override
  int hasil() {
    int a = x;
    int b = y;
    int c = 0;
    while (b != 0) {
      c = a % b;
      a = b;
      b = c;
    }
    return a;
  }
}