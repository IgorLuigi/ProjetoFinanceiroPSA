import 'package:flutter_application_1/app/model/entidades/receita.dart';
import 'package:sqflite/sqflite.dart';

import '../../dao/receita_DAO.dart';
import '../connection.dart';

class ReceitaDAOImpl implements ReceitaDAO {
  late Database _db;

  Future<List<Map<String, Object?>>> list() async {
    List<Map<String, Object?>> tarefas =
        await _db.rawQuery('SELECT * FROM receita');
    return tarefas;
  }

  @override
  Future<List<Receita>> find() async {
    _db = await Connection.get();
    List<Map<String, dynamic>> resultado = await _db.query('receita');
    List<Receita> listareceita = List.generate(resultado.length, (i) {
      var linha = resultado[i];
      return Receita(
          id: linha['id'],
          descricao: linha['descricao'].toString(),
          valor: linha['valor'].toString());
    });

    return listareceita;
  }

  @override
  remove(int id) async {
    _db = await Connection.get();
    var sql = 'DELETE FROM receita WHERE id = ?';
    _db.rawDelete(sql, [id]);
  }

  @override
  save(Receita receita) async {
    _db = await Connection.get();
    var sql;
    if (receita.id == null) {
      sql = 'INSERT INTO receita(descricao, valor) VALUES(?,?)';
      _db.rawInsert(sql, [receita.descricao, receita.valor]);
    } else {
      sql = 'UPDATE receita SET descricao = ?, valor = ? WHERE id = ?)';
      _db.rawUpdate(sql, [receita.descricao, receita.valor]);
    }
  }
}
