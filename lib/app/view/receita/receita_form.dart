import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'receita_form_back.dart';

class ReceitaForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();

  Widget fieldDescricao(ReceitaFormBack back) {
    return TextFormField(
        onSaved: (newValue) => back.receita.descricao = newValue,
        initialValue: back.receita.descricao,
        decoration: const InputDecoration(labelText: 'Descrição:'));
  }

  Widget fieldValor(ReceitaFormBack back) {
    return TextFormField(
        // validator: back.validateData,
        onSaved: (newValue) => back.receita.valor = newValue,
        initialValue: back.receita.valor,
        keyboardType: TextInputType.number,
        decoration:
            const InputDecoration(labelText: 'Valor:', hintText: '00,00'));
  }

  @override
  Widget build(BuildContext context) {
    var _back = ReceitaFormBack(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Cadastro de Receitas'),
        actions: [
          IconButton(
              icon: const Icon(Icons.save),
              onPressed: () {
                _form.currentState!.validate();
                _form.currentState!.save();
                if (_back.isValid) {
                  _back.save(context);
                }
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: _form,
          child: Column(
            children: [fieldDescricao(_back), fieldValor(_back)],
          ),
        ),
      ),
    );
  }
}
