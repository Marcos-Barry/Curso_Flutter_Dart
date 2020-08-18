import 'package:flutter/material.dart';

class Contato extends StatefulWidget {
  @override
  _ContatoState createState() => _ContatoState();
}

class _ContatoState extends State<Contato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Contato"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset("imagens/detalhe_contato.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Text("Contato",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: Text(
                  "E-mail: atendimento@atm.com.br",
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: Text(
                  "Telefone: (13) 3453-1435",
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: Text(
                  "Celular: (13) 98246-1351",
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
              )
            ],
          ),

        ),
      ),
    );
  }
}
