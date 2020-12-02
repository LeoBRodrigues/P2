import 'package:flutter/material.dart';
import 'package:p2_zanini/models/cliente.dart';

class Screen2 extends StatelessWidget {

  Future<Cliente> futureCliente;

  Screen2({Key key, @required this.futureCliente}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dados Cadastrados"),
      ),
      body: 
        Center(
          child:
            FutureBuilder<Cliente>(
              future: futureCliente,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data.nome);
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
          
                return CircularProgressIndicator();
              },
            )
        ),
    );
  }
}
