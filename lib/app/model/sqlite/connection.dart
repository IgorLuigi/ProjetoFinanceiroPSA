import 'package:flutter_application_1/app/model/sqlite/script.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Connection {
  static Database? _db;

  static Future<Database> get() async {
    if (_db == null) {
      var path = join(await getDatabasesPath(), 'bancofinancas3');

      _db = await openDatabase(
        path,
        version: 1,
        onCreate: (db, v) {
          db.execute(criarTabelaReceita);
          db.execute(criarTabelaDespesa);
        },
      );
    }
    return _db!;
  }
}
