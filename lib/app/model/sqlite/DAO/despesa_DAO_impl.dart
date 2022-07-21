import 'package:flutter_application_1/app/model/entidades/despesa.dart';
//import 'package:app/app/domain/despesa_DAO.dart';
import 'package:sqflite/sqflite.dart';

import '../../dao/despesa_DAO.dart';
import '../connection.dart';

class DespesaDAOImpl implements DespesaDAO {
  late Database _db;

  Future<List<Map<String, Object?>>> list() async {
    List<Map<String, Object?>> tarefas =
        await _db.rawQuery('SELECT * FROM despesa');
    return tarefas;
  }

  @override
  Future<List<Despesa>> find() async {
    _db = await Connection.get();
    List<Map<String, dynamic>> resultado = await _db.query('despesa');
    List<Despesa> listadespesa = List.generate(resultado.length, (i) {
      var linha = resultado[i];
      return Despesa(
          id: linha['id'],
          descricao: linha['descricao'].toString(),
          valor: linha['valor'].toString());
    });

    return listadespesa;
  }

  @override
  remove(int id) async {
    _db = await Connection.get();
    var sql = 'DELETE FROM despesa WHERE id = ?';
    _db.rawDelete(sql, [id]);
  }

  @override
  save(Despesa despesa) async {
    _db = await Connection.get();
    var sql;
    if (despesa.id == null) {
      sql = 'INSERT INTO despesa(descricao, valor) VALUES(?,?)';
      _db.rawInsert(sql, [despesa.descricao, despesa.valor]);
    } else {
      sql = 'UPDATE despesa SET descricao = ?, valor = ? WHERE id = ?)';
      _db.rawUpdate(sql, [despesa.descricao, despesa.valor]);
    }
  }
}
