import 'package:flutter/material.dart';
import 'package:sapatos/src/helpers/helpers.dart';
import 'package:sapatos/src/widgets/agregar_carrito.dart';
import 'package:sapatos/src/widgets/custom_appbar.dart';
import 'package:sapatos/src/widgets/zapato_desc.dart';
import 'package:sapatos/src/widgets/zapato_size.dart';



class ZapatoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    trocarStatusDark();


    return Scaffold(
      // body: CustomAppBar( texto: 'For you' )
      // body: ZapatoSizePreview(),
      body: Column(
        children: <Widget>[
          CustomAppBar( texto: 'For you' ),
          SizedBox( height: 20),

          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[

                    Hero(
                      tag: 'zapato-1',
                      child: ZapatoSizePreview()
                    ),

                    ZapatoDescripcion(
                      titulo: 'Nike Air Max 720',
                      descripcion: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                    ),

                ],
              ),
            )
          ),

          AgregarCarritoBoton( monto: 180.0 )

        ],
      ),
   );
  }
}