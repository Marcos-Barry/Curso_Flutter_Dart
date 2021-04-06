import 'dart:math';

import 'package:flutter/material.dart';

class Palitinho extends StatefulWidget {
  @override
  _PalitinhoState createState() => _PalitinhoState();
}

class _PalitinhoState extends State<Palitinho> {

  TextEditingController _controllerPalitos = TextEditingController();

  var _imagemApp = AssetImage("imagens/pedra.png");
  var _mensagem = "Diga seu palpite: ";
  var msg = "Seus palitos: ";
  String _mensagemErro = "";


  void _jogar(int escolhaUsuario){

    int meusPalitos = int.tryParse(_controllerPalitos.text);

    if(meusPalitos>3 || meusPalitos<0){
      setState(() {
        _mensagemErro ="Por favor digite um valor entre 0 e 3.";
      });
    }else {
      var opcoes = [ 1, 2, 3, 4, 5, 6];
      var numeros = Random().nextInt(6);
      var escolhaApp = opcoes[numeros];

      var paliApp = [0, 1, 2, 3];
      var palitos = Random().nextInt(4);
      var palitosApp = paliApp[palitos];


      while (escolhaUsuario == escolhaApp) {
        escolhaApp = opcoes[numeros];
      }

      switch (escolhaApp) {
        case 0:
          setState(() {
            this._imagemApp = AssetImage("imagens/1.png");
          });
          break;

        case 1:
          setState(() {
            this._imagemApp = AssetImage("imagens/2.png");
          });
          break;

        case 2:
          setState(() {
            this._imagemApp = AssetImage("imagens/3.png");
          });
          break;

        case 3:
          setState(() {
            this._imagemApp = AssetImage("imagens/3.png");
          });
          break;

        case 4:
          setState(() {
            this._imagemApp = AssetImage("imagens/5.png");
          });
          break;

        case 5:
          setState(() {
            this._imagemApp = AssetImage("imagens/6.png");
          });
          break;
      }

      var palitoUsuario = 3;
      var palitoApp = 3;
      var res = palitosApp + meusPalitos;
      if (escolhaApp == res) {
        setState(() {
          this._mensagem = "Você perdeu essa rodada :( ";
          this.msg = "Palitos App: $palitoApp , Seus palitos: $palitoUsuario";
        });
        palitoApp - 1;
        if (palitoApp == 0) {
          setState(() {
            this._mensagem = "Lamento você perdeu o jogo :( ";
            this.msg = "Palitos App: $palitoApp , Seus palitos: $palitoUsuario";
          });
        }
      } else if (escolhaUsuario == res) {
        setState(() {
          this._mensagem = "Você ganhou essa rodada :D ";
          this.msg = "Palitos App: $palitoApp \n\n Seus palitos: $palitoUsuario";
        });
        palitoUsuario - 1;

        if (palitoUsuario == 0) {
          setState(() {
            this._mensagem = "Parábens!! Você ganhou o jogo:D ";
            this.msg = "Palitos App: $palitoApp \n\n Seus palitos: $palitoUsuario";
          });
        }
      } else {
        setState(() {
          this._mensagem = "Ninguém ganhou nessa rodada. ";
          this.msg = "Soma: $res \n\n   App: $escolhaApp \n\n  Eu: $escolhaUsuario";
        });
      }
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Jogo do Palitinho"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
          child: Container(
            padding:EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 32, bottom: 16),
                    child: Text(
                      "Escolha do App",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ),
                      Image(image: this._imagemApp,height: 50,width: 50),
                  Padding(
                    padding: EdgeInsets.only(top: 32, bottom: 16),
                    child: Text(
                      this._mensagem,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                      Padding(
                        padding: EdgeInsets.only(top: 32),
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                          onTap: ()=>_jogar(1),
                          child: Image.asset("imagens/1.png",height: 50,width: 50),
                          ),
                          GestureDetector(
                          onTap: ()=>_jogar(2),
                          child: Image.asset("imagens/2.png",height: 50,width: 50),
                          ),
                          GestureDetector(
                          onTap: ()=>_jogar(3),
                          child: Image.asset("imagens/3.png", height: 50,width: 50),
                          ),
                      ],
                ),
            ),
                      Padding(
                      padding: EdgeInsets.only(top: 32),
                        child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: ()=>_jogar(4),
                                  child: Image.asset("imagens/4.png", height: 50,width: 50),
                                ),
                                GestureDetector(
                                  onTap: ()=>_jogar(5),
                                  child: Image.asset("imagens/5.png",height: 50,width: 50),
                                ),
                                GestureDetector(
                                  onTap: ()=>_jogar(6),
                                  child: Image.asset("imagens/6.png", height: 50,width: 50),
                                )
                          ],
                ),
              ),
                  TextField(
                    keyboardType: TextInputType.number ,
                    decoration: InputDecoration(
                        labelText: "Digite seus Palitos"
                    ),
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black
                    ),
                    controller: _controllerPalitos,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Center(
                        child:Text(
                            _mensagemErro,
                            style: TextStyle(
                                color: Colors.brown,
                                fontSize: 20
                            )
                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 32, bottom: 16),
                    child: Text(
                      this.msg,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )
            ],
            ),
            ),
    )
    );
          }
}
