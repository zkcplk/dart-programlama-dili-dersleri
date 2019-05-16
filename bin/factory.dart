main() {
//  Factory Constructor

/*   var yer = "istanbul";
  Yolcu yolculuk;

  if (yer == "istanbul")
    yolculuk = Yolcu.istanbul();
  else if (yer == "izmir")
    yolculuk = Yolcu.izmir();
  else
    yolculuk = Yolcu.diger();

  print("$yer için ücret: ${yolculuk.ucret}"); */

  Yolcu yolculuk = Yolcu("istanbul");
  print("Yolculuk için ücret: ${yolculuk.ucret}");

  Yolcu yolculuk2 = Yolcu("ankara");
  print("Yolculuk için ücret: ${yolculuk2.ucret}");
}

class Yolcu {
  int ucret;

//  "factory" içinde "return" kullanılabiliyor.
//  Normalde constructor içinde "return" kullanılamaz.
  factory Yolcu(String yer) {
    if (yer == "istanbul")
      return Yolcu.istanbul();
    else if (yer == "izmir")
      return Yolcu.izmir();
    else if (yer == "ankara")
      return Ankara();
    else
      return Yolcu.diger();
  }

  Yolcu.istanbul() {
    ucret = 300;
  }

  Yolcu.izmir() {
    ucret = 400;
  }

  Yolcu.diger() {
    ucret = 100;
  }
}

class Ankara extends Yolcu {
  Ankara() : super.diger();
}
