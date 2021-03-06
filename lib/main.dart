import 'package:flutter/material.dart';
import 'package:zubizapp/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: HomeScreen(),
    );
  }
}
