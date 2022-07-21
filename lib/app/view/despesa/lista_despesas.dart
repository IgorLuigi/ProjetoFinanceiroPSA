import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/controller/despesa_controller.dart';

import '../../model/entidades/despesa.dart';

class ListaDespesas extends StatelessWidget {
  DespesaController despesaController = DespesaController();

  //Buscar
  Future<List<Despesa>> buscarDespesas(BuildContext context) async {
    Future<List<Despesa>> despesas = despesaController.buscar();
    return despesas;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Lista de Despesas'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => Navigator.pushNamed(context, '/formDespesa'),
          )
        ],
      ),
      body: FutureBuilder(
          future: buscarDespesas(context),
          builder: (context, AsyncSnapshot<List<Despesa>> dadosFuturos) {
            if (!dadosFuturos.hasData) {
              return CircularProgressIndicator();
            } else {
              var receitas = dadosFuturos.data!;
              return ListView.builder(
                itemCount: receitas.length,
                itemBuilder: (context, contador) {
                  var receita = receitas[contador];
                  return ListTile(
                    title: Text(receita.descricao.toString()),
                    subtitle: Text('R\$ ' + receita.valor.toString()),
                  );
                },
              );
            }
          }),
    );
  }
}
