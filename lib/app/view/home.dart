import 'package:flutter/material.dart';

import '../my_app.dart';

class Home extends StatefulWidget {
  const Home({key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        var width = constraints.biggest.width;

        return Scaffold(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 0.9),
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text('Finance App'),
          ),
          body: ListView(
            padding: const EdgeInsets.all(60),
            children: [
              const Center(),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
                child: ListTile(
                    title: const Text('Saldo Atual:'),
                    trailing: Container(width: width / 6)),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
                child: ListTile(
                    title: const Text('Adicionar Receita:'),
                    trailing: Container(
                        width: width / 8,
                        child: Row(children: [
                          IconButton(
                              color: Color.fromRGBO(30, 30, 30, 0.6),
                              icon: const Icon(Icons.add_circle_rounded),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(MyApp.RECEITA_LIST);
                              })
                        ]))),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
                child: ListTile(
                    title: const Text('Adicionar Despesa:'),
                    trailing: Container(
                        width: width / 8,
                        child: Row(children: [
                          IconButton(
                              color: Color.fromRGBO(30, 30, 30, 0.6),
                              icon: const Icon(Icons.remove_circle_rounded),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(MyApp.DESPESA_LIST);
                              })
                        ]))),
              ),
            ],
          ),
        );
      },
    );
  }
}
