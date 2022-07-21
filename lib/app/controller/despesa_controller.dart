import 'package:flutter_application_1/app/model/service/despesa_service.dart';

import '../model/entidades/despesa.dart';

class DespesaController {
  DespesaService despesaService = DespesaService();

  Future<List<Despesa>> buscar() async {
    return despesaService.find();
  }
}
