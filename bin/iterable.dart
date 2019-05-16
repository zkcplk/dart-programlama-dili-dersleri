main() {
//  Iterable
//  0,1,2,3,4

  Iterable iterable = Iterable.generate(5);
  print(iterable);

  Iterable iterable2 = Iterable.generate(9, (eleman) {
    print(eleman);
    return eleman;
  });

  print(iterable2);
}
