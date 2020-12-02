import 'package:flutter/material.dart';

import 'package:p2_zanini/screen/screen2.dart';
import 'package:p2_zanini/models/cliente.dart';

class Screen1 extends StatelessWidget {

  final TextEditingController _controller = TextEditingController();
  Future<Cliente> _futureCliente;

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
              controller: _controller,
              decoration: InputDecoration(hintText: 'Coloque o CNPJ')
            ),
            ElevatedButton(
              child: Text("Consulta de CNPJ"), 
              onPressed: (){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Screen2()),
              );
              }
            )]
        )
      )
      
    );
  }
}