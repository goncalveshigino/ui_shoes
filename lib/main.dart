import 'package:flutter/material.dart';
import 'package:sapatos/src/pages/sapatos_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoes App',
      home: SapatoPage()
    );
  }
}