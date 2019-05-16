main() {
//  Enum

//  main() fonksiyonunda oluşturulamaz.
//  enum Color { mavi, siyah, beyaz }

  print(Color);
  print(Color.beyaz);
  print(Color.values);
  print(Color.values[0]);
}

enum Color { mavi, siyah, beyaz }

/* 
  Class içinde de oluşturulamaz.

  class Deneme {
    enum Color { mavi, siyah, beyaz }
  }
*/
