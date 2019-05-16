main() {
//  Map Örnekleri

  Map<String, int> map =
      Map.fromIterables(['elma', 'portakal', 'muz'], [10, 8, 5]);

  print(map);

//  Girilen KEY, Map içinde yoksa, ekle: .putIfAbsent()
  map.putIfAbsent('elma', () => 33);
  map.putIfAbsent('mandalina', () => 4);
  print(map);

//  Bir KEY'in değerini değiştirmek
  map['elma'] = 33;
  print(map);

//  KEY'lerde arama yapmak: .containsKey(key)
  var key = 'portakal';
  print("$key adlı key, bu mapte var mı: ${map.containsKey(key)}");

//  VALUE'larda arama yapmak: .containsValue(key)
  var value = 313;
  print("$value adlı value, bu mapte var mı: ${map.containsValue(value)}");
}
