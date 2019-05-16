main() {
//  Final Initializer

  Nokta4(2, 3);
}

//  Final değişkenlerin sadece Getter yapıları var.
class Nokta {
  int x, y;
}

class Nokta1 {
//  Bildirim ve Başlatma
  final x = 0, y = 0;

  Nokta1() {
    print('Nokta1 : $x $y');
  }
}

class Nokta2 {
//  Bildirim
  final x, y;

//  Başlatma
  Nokta2(this.x, this.y) {
    //  x ve y değerleri önce null, sonra burada verilen değerler şeklinde OLMUYOR,
    //  ilk değerleri direkt olarak "this.x" ve "this.y"'den gelen değerler olmuş oluyor.
    print('Nokta2 : $x $y');
  }
}

class Nokta3 {
//  Bildirim
  final x, y;

// Başlatma
  Nokta3(a, b)
      : x = a,
        y = b {
    print('Nokta3 : $x $y');
  }
}

class Nokta4 {
//  Bildirim
  int x, y; //  final olmadığı için initialize şartı yok, hata meydana gelmiyor.

//  Başlatma işlemi olmadığı için body kısmı çalışmadan önce x ve y'nin ilk değeri null olarak başlar.
  Nokta4(a, b) {
    print("xy degeri: $x $y");
    x = a;
    y = b;
    print("xy degeri: $x $y");
  }
}
