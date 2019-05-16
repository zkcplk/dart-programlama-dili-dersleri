main() {
//  Interface (Implements Class)

  var program = Program();
  program.toplam = 9;

  print(program.toplam);

  program.sesi_ac();
  program.birmetod();
}

class Arayuz {
  int toplam = 9;

  void sesi_ac() {
    print("Ses açıldı...");
  }

  void sesi_kapat() {
    print("Ses kapatıldı...");
  }
}

class KucukArayuz {
  void birmetod() => print("Küçük arayüz'ün bir metodu");
}

class Program implements Arayuz, KucukArayuz {
  void sesi_ac() => print("Programın sesi açıldı");
  void sesi_kapat() => print("Programın sesi kapatıldı");

  int toplam;

  void birmetod() => print("Programın bir metodu");
  void ozel() => print("Arayüzler'den bağımsız metod");
}

//  Abstract ile Implements arasındaki fark

abstract class A {
  get x;
  get y;
}

abstract class B {
  get a;
  get b;
  normal();

  int degisken;
  ozel() => print("merhaba");
}

//  class Deneme extends A {
//  class Deneme implements A {
//  class Deneme extends B {
//  class Deneme implements B {
//  ... kodlar ...
//  }
