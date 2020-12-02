import 'dart:async';
import 'dart:convert';
import 'package:p2_zanini/models/cliente.dart';
import 'package:http/http.dart' as http;

Future<Cliente> fetchCliente(String cnpj) async {
  final response =
      await http.get('https://www.receitaws.com.br/v1/cnpj/' + cnpj);

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Cliente.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('CNPJ não encontrado');
  }
}