import 'dart:ui';

import 'package:flutter/material.dart'; 



class BotonNaraja extends StatelessWidget {
     
     final double alto;
     final double baixo;
     final String texto;
     final Color color;

  const BotonNaraja(
     {@required this.texto,
      this.alto = 50, 
      this.baixo = 150, 
      this.color = Colors.orange
      }
     );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
        width: this.baixo, 
        height: this.alto, 
        decoration: BoxDecoration(
           color: this.color,
           borderRadius: BorderRadius.circular(100)
        ),
        child: Text('$texto', style: TextStyle( color: Colors.white)),
    );
  }
}