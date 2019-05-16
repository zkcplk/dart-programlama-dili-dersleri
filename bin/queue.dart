import 'dart:collection';

main() {
//  Queue: iterable için başta ve sonda, ekleme ve silme işlemi yapılabiliyor.

  var qui = Queue.from([1, 2, 3, 3, "string", null, []]);

//  .addFirst();
  qui.addFirst('dart');
//  .addLast();
  qui.addLast(77);
//  .removeFirst();
  qui.removeFirst();
//  .removeLast();
  qui.removeLast();

  print(qui.toSet().toList());
}
