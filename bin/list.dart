main() {
//  List (Array)

  var listem = ['süt', 'elma', 'ekmek', 'su'];
  print(listem);
  print(listem[2]);

  listem[2] = 'bulgur';
  print(listem);

  print("listenin toplam eleman sayısı: ${listem.length}");
  print(listem[2].length);

  var listem2 = [];
  print(listem2.length);

//  Boş liste oluşturma yazım şekilleri...
  var listemiz1 = [];
  List listemiz2 = [];

  var listemiz3 = List();
  List listemiz4 = List();
  List listemiz5 = new List();

//  Belirli bir type'ta liste oluşturma yazım şekilleri...

  var liste1 = <int>[]; //  String bir değer girilemez.
  List<int> liste2 = [];

  List<int> liste3 = <int>[];
  List<int> liste4 = List();
  var liste5 = List<int>();
  List<int> liste6 = new List();

//  Limitli liste (Fixed Length List)
  List<int> limitli = List(5); //  İlk oluşturulduğunda tüm değerler null olur.
  print(limitli);

//  limitli.add(10);  //  yeni bir eleman eklenemez!

  limitli[2] = 34;
  print(limitli);
}
