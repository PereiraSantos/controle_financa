

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseProvider {

  init() async{
    final database = openDatabase(
        join(await getDatabasesPath(), 'financas_database.db'),
        onCreate: (db, version) {
          db.execute('CREATE TABLE financas(id INTEGER PRIMARY KEY, valorRenda DOUBLE, dataRendaInicial TEXT, dataRendaFinal TEXT, valorPoupar DOUBLE, isAtivo BOOLEAN)',);
          db.execute('CREATE TABLE despesas(id INTEGER PRIMARY KEY, descricaoDespesa TEXT, valorDespesa DOUBLE, dataDespesa TEXT, idFinanca INTEGER)',);
          return db;
          },version: 1,
    );
    return database;
  }
}
