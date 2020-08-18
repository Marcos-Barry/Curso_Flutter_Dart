import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {

  String valor;

  TelaSecundaria({this.valor});

  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Secundaria"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
           Text("Segunda Tela!"),
           RaisedButton(
             child: Text("Ir para a primeira Tela"),
             padding: EdgeInsets.all(15),
             onPressed: (){
               Navigator.pushNamed(
                   context,
                   "/");
             },
           )

          ],
        ),
      ),
    );
  }
}
