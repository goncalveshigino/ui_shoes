import 'package:flutter/material.dart'; 


class SapatosSizePreview extends StatelessWidget {

  final bool fullScreen;

    SapatosSizePreview({
       this.fullScreen = false
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: (this.fullScreen) ? 5 : 30, 
        vertical: (this.fullScreen) ? 5: 0
      ),
      child: Container(
         width: double.infinity,
         height: (this.fullScreen) ? 350 : 380, 
         decoration: BoxDecoration(
           color: Color(0xffFFCF53),
           borderRadius:
              (!this.fullScreen)
               ? BorderRadius.circular(50)
               : BorderRadius.only(
                  bottomLeft: Radius.circular(50), 
                  bottomRight: Radius.circular(50), 
                  topLeft: Radius.circular(40), 
                  topRight: Radius.circular(40)
               )
         ),

         child: Column(
           children: [
             
             _SapatoComSombra(), 
             
             if(!this.fullScreen)
             _TamanhoSapatos()

           ],
         ),


      ),
    );
  }
} 


class _TamanhoSapatos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [

           _CadaTamanho( 7 ), 
           _CadaTamanho( 7.5 ), 
           _CadaTamanho( 8 ), 
           _CadaTamanho( 8.5 ),
           _CadaTamanho( 9 ), 
           _CadaTamanho( 9.5 )

         ],
      ),
    );
  }
}

class _CadaTamanho extends StatelessWidget {

   final double numero;

  const _CadaTamanho( this.numero);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        '${numero.toString().replaceAll('.0','')}',
        style: TextStyle(
           color: (this.numero == 9) ?  Colors.white : Color(0xffF1A23A),
          fontWeight: FontWeight.bold, 
          fontSize: 16
        ),
      ),
      width: 45, 
      height: 45,
      decoration: BoxDecoration(
         color: (this.numero == 9) ? Color(0xffF1A23A) : Colors.white, 
         borderRadius: BorderRadius.circular(10), 
         boxShadow: [
           if(this.numero == 9)
            BoxShadow(
              color: Color(0xffF1A23A), 
              blurRadius: 10, 
              offset: Offset(0, 5)
            )
         ]
      ),
    );
  }
}


class _SapatoComSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
         children: [
             
            Positioned(
              bottom: 20,
              right: 0,
              child: _SapatoSombra()
            ),


            Image( image: AssetImage('assets/imgs/negro.png'))
         ],
      ),
    );
  }
}


class _SapatoSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
         width: 230,
         height: 120,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(100), 
           boxShadow: [
              BoxShadow( color: Color(0xffEAA14E), blurRadius: 40)
           ]
         ),
      ),
    );
  }
}