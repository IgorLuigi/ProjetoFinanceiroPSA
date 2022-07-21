import 'package:flutter/material.dart';

import '../../controller/receita_controller.dart';
import '../../model/entidades/receita.dart';

class ListaReceitas extends StatelessWidget {
  ReceitaController receitaController = ReceitaController();

  //Buscar
  Future<List<Receita>> buscarReceitas(BuildContext context) async {
    Future<List<Receita>> receitas = receitaController.buscar();
    return receitas;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Lista de receitas'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => Navigator.pushNamed(context, '/formReceita'),
          )
        ],
      ),
      body: FutureBuilder(
          future: buscarReceitas(context),
          builder: (context, AsyncSnapshot<List<Receita>> dadosFuturos) {
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
