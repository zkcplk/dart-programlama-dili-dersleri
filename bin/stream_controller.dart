import 'dart:async';

List<String> liste = [
  "Ali",
  "Mehmet",
  "Esra",
  "Merve",
  "Seda",
  "Şebnem",
  "Murat"
];

//  Harcanan/Tüketilen Stream Örneği (Consuming Stream)
Stream<List<String>> get rehberListesi async* {
  for (var i = 0; i < liste.length; i++) {
    await Future.delayed(Duration(seconds: 2));
    yield liste.sublist(0, i + 1);
  }
}

main() {
//  StreamController
//  Bir akışı doldurmak için ve
//  Bir akıştan diğerine veri göndermek için kullanılabilir.

//  Doldurulan Stream Örneği (Populating Stream)
  StreamController<int> kontrol = StreamController();

//  Akışı doldurmak
//  Timer.periodic(Duration(seconds: 3), (Timer t) => kontrol.add(t.tick));

//  Bir akıştan diğerine veri göndermek
  rehberListesi.listen((list) {
    print("rehberList dinleniyor: $list");
    kontrol.add(list.length);
  });

  kontrol.stream.listen((toplam) {
    print("Toplam: $toplam");
  });
}
