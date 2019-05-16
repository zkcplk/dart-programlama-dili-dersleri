main() {
//  Operator Metodları

  String yazi1 = "bir ";
  String yazi2 = "iki";
  print(yazi1 + yazi2);

  int sayi1 = 2;
  int sayi2 = 2;
  print(sayi1 + sayi2);

  Ozel ornek1 = Ozel(1, 4);
  Ozel ornek2 = Ozel(1, 4);

  Ozel toplam = ornek1 + ornek2;
  print("Toplam x: ${toplam.x} ve y: ${toplam.y}");

  Ozel fark = ornek1 - ornek2;
  print("Fark x: ${fark.x} ve y: ${fark.y}");

  print(ornek1 == ornek2);
}

class Ozel {
  final int x, y;

  Ozel(this.x, this.y);

  Ozel operator +(other) => Ozel(x + other.x, y + other.y);
  Ozel operator -(other) => Ozel(x - other.x, y - other.y);

  bool operator ==(other) => x == other.x && y == other.y;
}
