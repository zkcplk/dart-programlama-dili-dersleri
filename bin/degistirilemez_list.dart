import 'dart:collection';

main() {
//  Değiştirilemez Liste

  var list = List.from([3, 5, 6, 7]);
  list.add(100);
  print(list);

  var degistirilemez = UnmodifiableListView(list);

//  degistirilemez.add(999); //  Error
//  degistirilemez.remove(6); //  Error

  degistirilemez[2] = 10;
}
