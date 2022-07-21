// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_application_1/app/model/sqlite/DAO/despesa_DAO_impl.dart';
import 'package:get_it/get_it.dart';

import '../entidades/despesa.dart';
import '../entidades/receita.dart';

class DespesaService {
  DespesaDAOImpl despesaDAOImpl = DespesaDAOImpl();

  list() async {
    despesaDAOImpl.list();
  }

  save(Despesa despesa) async {
    validateDescricao(despesa.descricao!);
    despesaDAOImpl.save(despesa);
  }

  remove(int id) async {
    await despesaDAOImpl.remove(id);
  }

  Future<List<Despesa>> find() async {
    return despesaDAOImpl.find();
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
