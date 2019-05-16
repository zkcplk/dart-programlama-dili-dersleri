import 'dart:async';

main() async {
//  Timers

  print("Başladı!");

  // Üstteki Timer çalışırken alttaki Timer'ın da 5 saniyesi harcanmış oluyor.
/*   Timer(Duration(seconds: 5), () => print("5 saniye sonra çalıştı..."));
  Timer(Duration(seconds: 6), () => print("6 saniye sonra çalıştı...")); */

/*   await Future.delayed(
      Duration(seconds: 5), () => print("5 saniye sonra çalıştı..."));
  await Future.delayed(
      Duration(seconds: 6), () => print("11 saniye sonra çalıştı...")); */

//  Periyodik olarak sürekli çalışsın
//  Timer.periodic(Duration(seconds: 5), (t) => print("sürekli çalış..."));

  Timer.periodic(Duration(seconds: 5), (t) {
    if (t.tick == 3)
      t.cancel();
    else
      print("Çalışmaya devam... ${t.tick}");
  });
}
