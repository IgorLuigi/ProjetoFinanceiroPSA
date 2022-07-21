import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../model/entidades/receita.dart';
import '../../model/service/receita_service.dart';

class ReceitaFormBack {
  late Receita receita;
  final _service = GetIt.I.get<ReceitaService>();
  bool _descricaoIsValid = true;

  bool get isValid => _descricaoIsValid; //&& _dataIsValid && _valorIsValid;

  //diferenciar novo com a alteração
  ReceitaFormBack(BuildContext context) {
    dynamic parameter = ModalRoute.of(context)!.settings.arguments;
    if (parameter == null) {
      receita = Receita();
    } else {
      receita = parameter;
    }
  }

  //salvar
  save(BuildContext context) async {
    await _service.save(receita);
    Navigator.pushNamed(context, '/listaReceitas');
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
