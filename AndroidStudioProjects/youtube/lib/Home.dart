import 'package:flutter/material.dart';
import 'Inicio.dart';
import 'EmAlta.dart';
import 'Inscricoes.dart';
import 'Biblioteca.dart';




class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int indiceAtual = 0;

  @override
  Widget build(BuildContext context) {

    List<Widget> telas = [
      Inicio(),
      EmAlta(),
      Inscricoes(),
      Biblioteca()

    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey,
          opacity: 1
        ),
        backgroundColor: Colors.white,
        title: Image.asset("imagem/youtube.png",
            width: 98,
            height: 22
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: (){
              print("ação: videocam");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print("ação: pesquisa");
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: (){
              print("ação: conta");
            },
          )
        ],
      ),
      body: telas[indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indiceAtual,
        onTap: (indice){

          setState(() {
            indiceAtual = indice;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.red,
              title: Text("Inicio"),
              icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
                backgroundColor: Colors.deepOrange,
                title: Text("Em alta"),
                icon: Icon(Icons.whatshot)
            ),
            BottomNavigationBarItem(
                backgroundColor: Colors.deepPurple,
                title: Text("Inscrições"),
                icon: Icon(Icons.subscriptions)
            ),
            BottomNavigationBarItem(
                backgroundColor: Colors.amber,
                title: Text("Biblioteca"),
                icon: Icon(Icons.folder)
            )
          ]),
    );
  }
}
