main() {
//  Async* Yield

/*   var data = [1, 2, 3, 4, 5];
  var stream = Stream<int>.fromIterable(data); */

  int toplam = 0;
  var stream = streamUret(5);
  stream.listen(
    (d) => toplam += d,
    onDone: () => print(toplam),
  );
}

Stream<int> streamUret(int sayi) async* {
  for (int i = 1; i <= sayi; i++) {
    print("...");
    yield i;
  }
}
