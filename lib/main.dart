import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sapatos/src/model/sapato_model.dart';
import 'package:sapatos/src/pages/zapato_page.dart';

 
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SapatoModel(),
        )
      ],
      child: MyApp()
    )
  );
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoes App',
   
      home: ZapatoPage(),
    );
  }
}