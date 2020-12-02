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
        Column(
          children: 
          [
            FutureBuilder<Cliente>(
              future: futureCliente,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return DataTable(
                    columns: [DataColumn(label: Text('Informações'))], 
                    rows: [
                      DataRow(cells: [
                        DataCell(Text(snapshot.data.cnpj)),
                      ]),
                      DataRow(cells: [ 
                        DataCell(Text(snapshot.data.nome)),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(snapshot.data.fantasia)),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(snapshot.data.logradouro)),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(snapshot.data.numero)),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(snapshot.data.cep)),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(snapshot.data.bairro)),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(snapshot.data.municipio)),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(snapshot.data.uf)),
                      ]), 
                    ]
                  );
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
          
                return CircularProgressIndicator();
              },
            ),
            ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
            Navigator.pop(context);
          },
          child: Text('Encerrar consulta'),
          ),
          ]
            
        ),
    );
  }
}
