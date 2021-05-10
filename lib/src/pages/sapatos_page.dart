import 'package:flutter/material.dart';
import 'package:sapatos/src/widgets/custom_appBar.dart';
import 'package:sapatos/src/widgets/sapato_size.dart';

class SapatoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          CustomAppBar( texto: 'For you',),
          SizedBox(height: 20,),
          SapatosSizePreview(),
        ],
      ),
    );
  }
}