// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_application_1/app/model/service/despesa_service.dart';
import 'package:flutter_application_1/app/model/sqlite/DAO/despesa_DAO_impl.dart';
import 'package:flutter_application_1/app/model/sqlite/DAO/receita_DAO_impl.dart';
import 'package:get_it/get_it.dart';
import 'model/dao/despesa_DAO.dart';
import 'model/dao/receita_DAO.dart';
import 'model/service/receita_service.dart';

setupinjection() {
  GetIt getIt = GetIt.I;

  getIt.registerSingleton<ReceitaDAO>(ReceitaDAOImpl());
  getIt.registerSingleton<DespesaDAO>(DespesaDAOImpl());

  getIt.registerSingleton<ReceitaService>(ReceitaService());
  getIt.registerSingleton<DespesaService>(DespesaService());
}
