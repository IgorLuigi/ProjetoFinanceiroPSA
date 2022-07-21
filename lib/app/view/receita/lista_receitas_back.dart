import 'package:flutter/material.dart';

import '../../controller/receita_controller.dart';
import '../../model/entidades/receita.dart';

class ListaReceitaBack {
  ReceitaController receitaController = ReceitaController();

  //salvar
  Future<List<Receita>> list(BuildContext context) async {
    return await receitaController.buscar();
  }
}
