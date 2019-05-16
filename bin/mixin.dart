main() {
//  Mixin

  M m = M(3);
  m.harika();
  print(m.x);
}

class M extends A with B, C {
//class M extends A implements B, C {
  M(int x) : super(x);

  @override
  void merhaba() {
    print("implement...");
  }
}

class A {
  int x = 10;
  void yaz() => print("Bu bir A Class'ıdır.");
  void harika() => print("HARİKA...");

  A(this.x);
}

class B {
  int x = 12;
  void harika() => print("Bugün muhteşem bir gün!");
}

class C {
  void merhaba() => print("Merhaba, nasılsın?");
}
