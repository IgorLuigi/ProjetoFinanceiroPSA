import 'package:flutter_application_1/app/model/service/receita_service.dart';

import '../model/entidades/receita.dart';

class ReceitaController {
  var receitaService = ReceitaService();

  Future<List<Receita>> buscar() async {
    return receitaService.find();
  }
}
