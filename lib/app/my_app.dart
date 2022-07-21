import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/view/despesa/lista_despesas.dart';
import 'package:flutter_application_1/app/view/receita/lista_receitas.dart';
import 'package:flutter_application_1/app/view/receita/receita_form.dart';
import '../app/view/home/home.dart';

class MyApp extends StatelessWidget {
  static const HOME = '/';
  static const LISTA_RECEITAS = '/listaReceitas';
  static const LISTA_DESPESAS = '/listaDespesas';
  static const RECEITA_FORM = '/formReceita';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        HOME: (context) => const Home(),
        LISTA_RECEITAS: (context) => ListaReceitas(),
        LISTA_DESPESAS: (context) => ListaDespesas(),
        RECEITA_FORM: (context) => ReceitaForm()

        // DESPESA_FORM: (context) => DespesaWidgetForm(),
        //DESPESA_LIST: (context) => DespesaWidgetList(),
        //RECEITA_DETAILS: (context) => ReceitaDetails(),
        //DESPESA_DETAILS: (context) => DespesaDetails()
      },
    );
  }
}
