import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/model/service/despesa_service.dart';
import 'package:get_it/get_it.dart';

import '../../model/entidades/despesa.dart';
import '../../model/entidades/receita.dart';
import '../../model/service/receita_service.dart';

class DespesaFormBack {
  late Despesa despesa;
  final _service = GetIt.I.get<DespesaService>();
  bool _descricaoIsValid = true;

  bool get isValid => _descricaoIsValid; //&& _dataIsValid && _valorIsValid;

  //diferenciar novo com a alteração
  DespesaFormBack(BuildContext context) {
    dynamic parameter = ModalRoute.of(context)!.settings.arguments;
    if (parameter == null) {
      despesa = Despesa();
    } else {
      despesa = parameter;
    }
  }

  //salvar
  save(BuildContext context) async {
    await _service.save(despesa);
    Navigator.pushNamed(context, '/listaDespesas');
  }

  //validações
  String? validateDescricao(String descricao) {
    try {
      _service.validateDescricao(descricao);
      _descricaoIsValid = true;
      return null;
    } catch (e) {
      _descricaoIsValid = false;
      return e.toString();
    }
  }
}
