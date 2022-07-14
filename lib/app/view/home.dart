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
              SizedBox(
                height: 100,
                width: width,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                      title: const Text('Saldo Atual'),
                      trailing: Container(
                          width: width / 3.9,
                          child: Row(children: const [
                            Text(
                              "R\$ 25,00",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.black),
                            ),
                          ]))),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
                child: ListTile(
                    title: const Text('Receitas'),
                    trailing: Container(
                        width: width / 3.9,
                        child: Row(children: const [
                          Text(
                            "R\$ 40,00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.green),
                          ),
                        ]))),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
                child: ListTile(
                    title: const Text('Despesas'),
                    trailing: Container(
                        width: width / 3.9,
                        child: Row(children: const [
                          Text(
                            "R\$ 15,00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.red),
                          ),
                        ]))),
              ),
            ],
          ),
        );
      },
    );
  }
}
