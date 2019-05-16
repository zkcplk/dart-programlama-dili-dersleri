main() {
//  Initializers (Başlatıcılar)

  Araba araba = Araba(2);
}

class Araba extends Motor {
  int kapi;
  String renk;

  int kapiboyu;

/*   Araba() : super(700) {
    renk = "mavi";
    kapi = 4;
    print("$renk renkli, $kapi kapılı bir araba oluşturuldu.");
  } */

  Araba(this.kapi)
      : renk = "mavi",
        kapiboyu = kapi * 4,
        super(700) {
    print("$renk renkli, $kapiboyu kapılı bir araba oluşturuldu.");
  }
}

class Motor {
  int power;

  Motor(this.power) {
    print("$power beygir gücünde motor oluşturuldu...");
  }
}
