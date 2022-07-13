import 'package:flutter/material.dart';
import '../app/view/home.dart';

class MyApp extends StatelessWidget {
  static const HOME = '/';
  static const RECEITA_LIST = 'receita-widget-list';
  static const DESPESA_LIST = 'despesa-widget-list';

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
        //RECEITA_FORM: (context) => ReceitaWidgetForm(),
        //RECEITA_LIST: (context) => ReceitaWidgetList(),
        // DESPESA_FORM: (context) => DespesaWidgetForm(),
        //DESPESA_LIST: (context) => DespesaWidgetList(),
        //RECEITA_DETAILS: (context) => ReceitaDetails(),
        //DESPESA_DETAILS: (context) => DespesaDetails()
      },
    );
  }
}
