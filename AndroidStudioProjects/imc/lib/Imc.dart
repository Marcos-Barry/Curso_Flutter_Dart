import 'package:flutter/material.dart';



class Imc extends StatefulWidget {

  Imc({this.resut , this.imge});
  final String resut;
  final int imge;

  @override
  _ImcState createState() => _ImcState();
}

class _ImcState extends State<Imc> {

  

  @override
  Widget build(BuildContext context) {
    
    
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Resultado"),
        backgroundColor: Colors.orange,
      ),
      body: Center(

        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(60),
              child: Text("${widget.resut}",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Image(image: AssetImage("imagens/ideal.png" ),height: 400),
          ],
        ),
      ),
    );
  }
}
