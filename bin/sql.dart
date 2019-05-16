import 'package:mysql1/mysql1.dart';

main() async {
  // MySQL bağlantısı kurmak (testdb önceden oluşturulmalı)
  final baglan = await MySqlConnection.connect(ConnectionSettings(
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: null,
    db: 'testdb',
  ));

  // users tablosu var mı?
  var table = await baglan.query('''SHOW TABLES LIKE "users"''');

  // Tablo oluşturmak
  if (table.isEmpty) {
    await baglan.query('''
      CREATE TABLE users 
      (id int NOT NULL AUTO_INCREMENT PRIMARY KEY, 
      name varchar(255), 
      email varchar(255), 
      age int)
    ''');
  }

  // Tabloya veri girmek
  await baglan.query(
    'insert into users (name, email, age) values (?, ?, ?)',
    ['Mehmet', 'mehmet@hotmail.com', 25],
  );

  await baglan.queryMulti(
    'insert into users (name, email, age) values (?, ?, ?)',
    [
      ['Ahmet', 'ahmet@hotmail.com.tr', 21],
      ['Esra', 'esra@hotmail.com.tr', 20],
      ['Ayşe', 'aysee@hotmail.com.tr', 19]
    ],
  );

  // Tabloda id'si 3 olanı bulmak
  var results = await baglan.query(
    'select name, email from users where id = ?',
    [3],
  );
  print("Tabloda id=3 olan kişi:");
  for (var row in results) {
    print('name: ${row[0]}, email: ${row[1]}');
  }

  //  Tüm tabloyu okumak
  var all = await baglan.query('select * from users');
  print("");
  print("Tüm içerikler: testdb");
  for (var row in all) {
    print(row.join(" - "));
  }

  // MySQL bağlantısını kapatmak
  await baglan.close();
}
