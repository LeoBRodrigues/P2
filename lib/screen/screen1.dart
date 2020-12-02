import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  
  Widget build(BuildContext context){
    return Scaffold(

        appBar: AppBar(title: Text("Nota Fiscal Rápida")),
        body: Center(
          child: Text('Hello World'))
    )
  }
}