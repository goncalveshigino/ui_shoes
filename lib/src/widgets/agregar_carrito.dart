import 'package:flutter/material.dart';
import 'package:sapatos/src/widgets/boton_naraja.dart'; 

class AgregarCarritoBoton extends StatelessWidget {

   final double monto;

   AgregarCarritoBoton({this.monto});



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all( 10 ),
      child: Container(
        width: double.infinity, 
        height: 100, 
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(100)
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
           children: [
               SizedBox( width: 20,),
              Text('\$$monto', style: TextStyle( fontSize: 28, fontWeight: FontWeight.w700)), 
              Spacer(),
              BotonNaraja(texto: 'Add to cart',), 
              SizedBox(width: 20,)
           ],
        ),
      ),
    );
  }
}