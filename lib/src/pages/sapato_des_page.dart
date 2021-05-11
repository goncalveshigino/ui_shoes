import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sapatos/src/widgets/boton_naraja.dart';
import 'package:sapatos/src/widgets/sapato_size.dart';
import 'package:sapatos/src/widgets/sapatos_description.dart'; 


class SapatoDesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
           children: [

              SapatosSizePreview( fullScreen: true ), 


              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                     children: [
                        SapatoDescription(
                          titulo: 'Nike Air Max 720',
                          description: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                        ),

                        _MontoBuyNow(),

                        _ColoresYmas()
                     ],
                  ),
                ),
              )
           ],
       ),
    );
  }
}

class _ColoresYmas extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
         children: [
             
             Expanded(
                child: Stack(
                  children: [
                              
                    Positioned( left: 90, child: _BotonColor( Color(0xff364D56))),
                    Positioned( left: 60, child: _BotonColor( Color(0xffFFAD29))),
                    Positioned( left: 30, child: _BotonColor( Color(0xffC6D642))),
                    _BotonColor( Color(0xff2099F1)),
                  ],
                ),
             ),

          
             BotonNaraja(texto: 'More related items', alto: 30, baixo: 160, color: Color(0xffFFC675),)
           

         ],
      ),
    );
  }
}

class _BotonColor extends StatelessWidget {
  

  final Color color;

   _BotonColor( this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
       width: 45, 
       height: 45, 
       decoration: BoxDecoration(
          color: color, 
          shape: BoxShape.circle
       ),
    );
  }
}




class _MontoBuyNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
         child: Row(
            children: [
               Text('\$180.0', style: TextStyle( fontSize: 28, fontWeight: FontWeight.bold)), 
                Spacer(),
               BotonNaraja(texto: 'Buy now', baixo: 120, alto: 40,)
            ],
         ),
      ),
    );
  }
}