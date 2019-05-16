main() {
//  Static

//  var daire = Daire();
//  daire.alan();   //  Static metod bu şekilde çalışmaz

  print(Daire.pi);
  Daire.alan(5);

/*   
  Performans ve Memory İsrafı

  var daire1 = Daire();
  print(daire1.pi);
  var daire2 = Daire();
  print(daire2.pi); 

*/

//  Static değeri değiştirilebilir,
//  eğer hiç değişmemesini istiyorsak const veya final yapmalıyız.

//  Daire.pi = 3;
//  print(Daire.pi);
}

class Daire {
  static const num pi = 3.14;

  String renk;

  static void alan(num cap) {
    print("Dairenin alanı: ${(pi * cap * cap)}");

    //  static metod içinde "this." yapısı kullanılamaz.
    //  static_olmayan(); // Static metod içinde kullanılamaz.
    //  print(renk); // Static metod içinde kullanılamaz.
  }

  void static_olmayan(num cap) {
    print("Static olmayan normal metodumuz...");
    print("Normal metotta static değişken kullanılabilir: $pi");

    //  Normal metod içinde static metod kullanılabilir:
    Daire.alan(5);
  }
}
