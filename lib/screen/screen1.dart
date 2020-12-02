import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:p2_zanini/screen/screen2.dart';
import 'package:p2_zanini/models/cliente.dart';
import 'package:p2_zanini/services/api_handler.dart';

import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';


class Screen1 extends StatelessWidget {

  final TextEditingController _controller = TextEditingController();
  Future<Cliente> _futureCliente;

  var maskFormatter = new MaskTextInputFormatter(mask: '##.###.###/####-##', filter: { "#": RegExp(r'[0-9]') });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consulta de CNPJ'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              inputFormatters: [ 
                maskFormatter
                ],
              controller: _controller,
              decoration: InputDecoration(hintText: 'Coloque o CNPJ')
            ),
            ElevatedButton(
              child: Text("Consulta de CNPJ"), 
              onPressed: (){
                _controller.value = maskFormatter.updateMask(mask: '##############');
                _futureCliente = fetchCliente(_controller.text);
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Screen2(futureCliente: _futureCliente)),
              );
              }
            )]
        )
      )
      
    );
  }
}