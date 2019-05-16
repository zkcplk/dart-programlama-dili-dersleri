main() {
//  Map<Key, Value>

  var araba = {
    'renk': 'Kırmızı',
    'model': 'A3',
    'marka': 'Audi',
    'üretim yılı': 2018,
  };

  print("Arabanın markası: ${araba['marka']}");
  print(araba.length);

  araba['marka'] = 'BMW';
  print("Arabanın markası: ${araba['marka']}");

//  Map içinde Liste
  Map<String, dynamic> apartman = {
    'kat sayısı': 5,
    'daire sayısı': 10,
    'boş daireler': 3,
    'boş daire )(/&%+^+%&/() numaraları': [3, 7, 9],
  };

  List<int> bos_daireler = apartman['boş daire )(/&%+^+%&/() numaraları'];
  print("Boş dairelerin ikincisi: ${bos_daireler[1]}");

//  Liste içinde Map
  List<Map<String, int>> listem = [
    {'yaş': 19},
    {'boy': 175}
  ];

  print(listem[0]['yaş']);
  print(listem[1]['boy']);

//  Boş bir map oluşturma yazım şekilleri....
  var araba1 = {};
  Map araba2 = {};

  var araba3 = Map();
  Map araba4 = Map();
  Map araba5 = new Map();

//  Belirli bir type'ta map oluşturma yazım şekilleri...
  var arabam1 = <String, int>{};
  Map<String, int> arabam2 = {};

  Map<String, int> arabam3 = <String, int>{};
  var arabam4 = Map<String, int>();
  Map<String, int> arabam5 = Map();
  Map<String, int> arabam6 = new Map();
}
