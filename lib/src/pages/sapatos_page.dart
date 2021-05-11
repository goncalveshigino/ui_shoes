import 'package:flutter/material.dart';
import 'package:sapatos/src/widgets/agregar_carrito.dart';
import 'package:sapatos/src/widgets/custom_appBar.dart';
import 'package:sapatos/src/widgets/sapato_size.dart';
import 'package:sapatos/src/widgets/sapatos_description.dart';

class SapatoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          CustomAppBar( texto: 'For you',),
          SizedBox(height: 20,),
           
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                    SapatosSizePreview(),

                    SapatoDescription(
                      titulo: 'Nike Air Max 720',
                      description: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                    ),

                ],
              ),
            ),
          ), 

          AgregarCarritoBoton( monto: 180.0)
        ],
      ),
    );
  }
}