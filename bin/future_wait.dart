main() {
//  Future.wait() - Çoklu future işlemleri

  islemler();
}

islemler() async {
  Future f1 = s1();
  Future f2 = s2();
  Future f3 = s3();
  Future f4 = s4();

  await Future.wait([f1, f2, f3, f4]);

  print("Tüm işlemler bitti");
}

s1() {
  print("s1 başladı..");
  return Future.delayed(Duration(seconds: 10), () => print("s1 bitti"));
}

s2() {
  print("s2 başladı..");
  return Future.delayed(Duration(microseconds: 0), () => print("s2 bitti"));
}

s3() {
  print("s3 başladı..");
  return Future.delayed(Duration(seconds: 15), () => print("s3 bitti"));
}

s4() {
  print("s4 başladı..");
  return Future.microtask(() => print("s4 bitti"));
}
