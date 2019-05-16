import 'dart:math';

main() {
//  Bazı sabitler
  print("e sabiti: $e");
  print("pi sabiti: $pi");
  print("2nin kökü: $sqrt2");

//  Max ve Min bulmak
  print("Max: " + max(1, 5).toString());
  print("Min: " + min(1, 5).toString());

//  Üs almak
  print("üç üzeri iki: " + pow(3, 2).toString());

//  Kök almak
  print("ikinin kare kökü: " + sqrt(9).toString());

//  Logaritmik hesap
  print("log 40'ın değeri: " + log(40).toString());

//  Exponansiyel hesap
  print("e üzeri 2: " + exp(2).toString());

//  Trigonometrik hesaplar
  print("sinüs 30: " + sin(30).toString()); //  hatalı hesaplama

  Function radyan = (int derece) => derece * (pi / 180);

  print("sinüs 30: " + sin(radyan(30)).toString());
  print("sinüs 30: " + sin(radyan(30)).toStringAsFixed(2).toString());
  print("cosinüs 60: " + cos(radyan(60)).toStringAsFixed(2).toString());

//  RANDOM
  var random = Random();

  // 0 ile 1 arası ondalıklı sayı seçiyor...
  double ondalikli = random.nextDouble();
  print("Rastgele virgüllü: ${ondalikli}");
  print("Rastgele virgüllü: ${ondalikli.toStringAsFixed(2)}");

  //  0 ile 4 arası tam sayı seçiyor...
  int tamsayi = random.nextInt(5) + 1;
  print("Rastgele tam sayı: $tamsayi");

  //  1 ile 5 arası olmasını istiyorsak...
  print("Rastgele tam sayı: ${(tamsayi + 1)}");
}
