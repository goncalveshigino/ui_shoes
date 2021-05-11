import 'package:flutter/material.dart'; 

class SapatoDescription extends StatelessWidget {

  final String titulo;
  final String description;

  const SapatoDescription({
     @required this.titulo, 
     @required this.description
     });




  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
       child: Column(
         children: [
            SizedBox(height: 20,),
            Text(this.titulo, style: TextStyle( fontSize: 30, fontWeight: FontWeight.w700)),
            SizedBox(height: 20,),
            Text(this.description, style: TextStyle( color: Colors.black54, height: 1.5)),
          

         ],
       ),
    );
  }
}