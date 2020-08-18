import 'package:flutter/material.dart';

class Servicos extends StatefulWidget {
  @override
  _ServicosState createState() => _ServicosState();
}

class _ServicosState extends State<Servicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Serviços"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset("imagens/detalhe_servico.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 45),
                    child: Text("Nossos Serviços",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: Text(
                    "Consultoria",
                  style: TextStyle(
                    fontSize: 18
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: Text(
                  "Cálculos de preços",
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: Text(
                  "Acompanhamento de projetos",
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
