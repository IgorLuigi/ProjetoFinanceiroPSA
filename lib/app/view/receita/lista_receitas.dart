import 'package:flutter/material.dart';

class ListaReceitas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Lista de Receitas'),
            backgroundColor: Colors.black),
        body: Align(
          alignment: Alignment.bottomRight,
          child: RaisedButton(
            onPressed: () {},
            child: IconButton(
                onPressed: () => Navigator.pushNamed(context, '/formTarefa'),
                icon: const Icon(Icons.add_circle_rounded)),
            color: Colors.blue,
            textColor: Colors.white,
            elevation: 5,
          ),
        ));
  }
}
