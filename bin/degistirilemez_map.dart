import 'dart:collection';

main() {
//  Değiştirilemez Map

  Map<String, int> tarih = {
    "İstanbul'un Fethi": 1453,
    "Cumhuriyet'in İlanı": 1923,
    "Fransız İhtilali": 1789,
  };

  var degistirilemez = UnmodifiableMapView(tarih);
//  degistirilemez["Doğum Günüm"] = 1995; //  Error
  degistirilemez["Fransız İhtilali"] = 1777; //  Error

  print(degistirilemez);
}
