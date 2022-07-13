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
          backgroundColor: const Color.fromRGBO(139, 0, 139, 0.8),
          appBar: AppBar(
            //backgroundColor: Colors.purpleAccent,
            backgroundColor: const Color.fromRGBO(139, 0, 139, 0.8),
            title: const Text('App de Finanças'),
            // actions: [
            //   IconButton(
            //     icon: Icon(Icons.add_circle_rounded),
            //     onPressed: (){
            //       Navigator.of(context).pushNamed(MyApp.RECEITA_LIST);
            //     }
            //   ),
            //   IconButton(
            //     icon: Icon(Icons.remove_circle_rounded),
            //     onPressed: (){
            //       Navigator.of(context).pushNamed(MyApp.DESPESA_LIST);
            //     }
            //   )
            // ],
          ),
          body: ListView(
            padding: const EdgeInsets.all(60),
            children: [
              const Center(
                child: Text(
                  'Suas Finanças',
                  style: TextStyle(
                      fontSize: 30, backgroundColor: Colors.purpleAccent),
                ),
              ),
              Card(
                child: ListTile(
                    title: const Text('Receita:'),
                    trailing: Container(
                        width: width / 6,
                        child: Row(children: [
                          IconButton(
                              color: Colors.purpleAccent,
                              icon: const Icon(Icons.add_circle_rounded),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(MyApp.RECEITA_LIST);
                              })
                        ]))),
              ),
              Card(
                child: ListTile(
                    title: const Text('Despesa:'),
                    trailing: Container(
                        width: width / 6,
                        child: Row(children: [
                          IconButton(
                              color: Colors.purpleAccent,
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