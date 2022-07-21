// ignore: import_of_legacy_library_into_null_safe
import 'package:get_it/get_it.dart';

import '../dao/receita_DAO.dart';
import '../entidades/receita.dart';
import '../sqlite/DAO/receita_DAO_impl.dart';

class ReceitaService {
  var daoreceita = ReceitaDAOImpl();
  final _daoreceita = GetIt.I.get<ReceitaDAO>();

  list() async {
    daoreceita.list();
  }

  save(Receita receita) async {
    validateDescricao(receita.descricao!);
    daoreceita.save(receita);
  }

  remove(int id) async {
    await _daoreceita.remove(id);
  }

  Future<List<Receita>> find() {
    return daoreceita.find();
  }

  validateDescricao(String descricao) {
    var minimodescricao = 1;
    var maximodescricao = 100;

    if (descricao == null) {
      throw new Exception("é necessário digitar a descrição do produto");
    } else if (descricao.length < minimodescricao) {
      throw new Exception(
          "é necessário digitar pelo menos $minimodescricao descrição do produto");
    } else if (descricao.length > maximodescricao) {
      throw new Exception("ultrapassou o limete da descrição.");
    }
  }

  //adicionar validação de data e valor

}
