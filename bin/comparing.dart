main() {
//  Nesnelerin Karşılaştırılması (Comparing Objects)

  var kisi1 = Kimlik('ali', 'yılmaz', 12345);
  var kisi2 = Kimlik('ali', 'yılmaz', 12345);
  var kisi3 = kisi1;
  var kisi4 = Kimlik('ali', 'ozturk', 10101);

/*   print(kisi1 == kisi2);

  print(kisi1.hashCode);
  print(kisi3.hashCode); */

  print(kisi1 == kisi2);
  print(kisi2 == kisi3);
  print(kisi1 == kisi4);
}

/* class Object {
  bool operator ==(other) => identical(this, other);
  external int get hashCode;
  external String toString();
  external noSuchMethod(Invocation im);
  external Type get runtimeType;
} */

class Kimlik {
  String ad;
  String soyad;
  int no;

  Kimlik(this.ad, this.soyad, this.no);

  bool operator ==(other) => no == other.no;
//  bool operator ==(other) => ad == other.ad;
}
