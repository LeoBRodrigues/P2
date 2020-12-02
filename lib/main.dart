import 'dart:async';
import 'package:flutter/material.dart';
import 'package:p2_zanini/models/cliente.dart';
import 'package:p2_zanini/services/api_handler.dart';
import 'package:p2_zanini/screen/screen1.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class ActionButton extends StatelessWidget {
  
  final String text;
  final Function action;

  const ActionButton({this.text, this.action});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child:
          Text(this.text),
          onPressed: this.action
      ),
    );
  }
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _controller = TextEditingController();
  Future<Cliente> _futureCliente;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Consulta de CNPJ',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Screen1() 
    );
  }
}