import 'package:flutter/material.dart';
import 'dart:math';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Frases do Dia",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Pra hoje: sorrisos bobos, uma mente tranquila e um coração cheio de paz.",
    "Às vezes as coisas demoram, mas acontecem. O importante é saber esperar e não perder a fé!",
    "Imagine uma nova história para a sua vida e acredite nela.",
    "Nem todos os dias são bons, mas há algo bom em cada dia.",
    "Sorria! Deus acaba de te dar um novo dia e coisas extraordinárias podem acontecer se você acreditar.",
    "Um pequeno pensamento positivo pela manhã pode mudar todo o seu dia.",
    "Não se preocupe em entender, viver ultrapassa qualquer entendimento.",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma nova frase!";

  void _gerarFrase(){

    var numeroSorteado = Random().nextInt( _frases.length );


    setState(() {
      _fraseGerada = _frases[ numeroSorteado ];
    });

  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.red,
      ),
      body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            //width: double.infinity,
            /* decoration: BoxDecoration(
            border: Border.all(
                width: 3, color: Colors.amber
            )
        ),*/
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset("img/logo.png"),
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      color: Colors.black
                  ),
                ),
                RaisedButton(
                  child: Text(
                    "Nova Frase",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  color: Colors.red,
                  onPressed: _gerarFrase,
                )
              ],
            ),
          )
      ),
    );
  }
}
