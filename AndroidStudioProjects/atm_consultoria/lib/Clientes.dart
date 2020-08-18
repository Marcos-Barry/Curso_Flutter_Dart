import 'package:flutter/material.dart';

class Clientes extends StatefulWidget {
  @override
  _ClientesState createState() => _ClientesState();
}

class _ClientesState extends State<Clientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Clientes"),
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
                  Image.asset("imagens/detalhe_cliente.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 80),
                    child: Text("Clientes",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.lightGreen,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: Image.asset("imagens/cliente1.png"),
              ),
              Text(
                  "Empresa de Software"
              ),
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: Image.asset("imagens/cliente2.png"),
              ),
              Text(
                  "Empresa de auditoria"
              ),
            ],
          ),

        ),
      ),
    );
  }
}
