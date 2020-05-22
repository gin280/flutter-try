import 'package:flutter/material.dart';
import 'package:flutter_try/services/service_locator.dart';
import 'package:flutter_try/views/counter/counter_screen.dart';


void main() {
  setupServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterScreen(),
    );
  }
}