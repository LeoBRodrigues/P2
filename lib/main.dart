import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:p2_zanini/screen/screen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.purple[300]),
      home: Screen1(),
      )

    );
  }
}

