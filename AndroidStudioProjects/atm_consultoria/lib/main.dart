import 'package:atm_consultoria/Clientes.dart';
import 'package:atm_consultoria/Contato.dart';
import 'package:atm_consultoria/Empresa.dart';
import 'package:atm_consultoria/Servicos.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
          home: Principal(),
          debugShowCheckedModeBanner: false,
  ));
}

class Principal extends StatefulWidget {

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {

  void _abrirEmpresa() {

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Empresa()));
  }

  void _abrirServico() {

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Servicos()));
  }

  void _abrirClientes() {

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Clientes()));
  }

  void _abrirContato() {

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Contato()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("imagens/logo.png"),
                Padding(
                  padding: EdgeInsets.only(top: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: _abrirEmpresa,
                        child: Image.asset("imagens/menu_empresa.png"),
                      ),
                      GestureDetector(
                        onTap: _abrirServico,
                        child: Image.asset("imagens/menu_servico.png"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: _abrirClientes,
                        child: Image.asset("imagens/menu_cliente.png"),
                      ),
                      GestureDetector(
                        onTap: _abrirContato,
                        child: Image.asset("imagens/menu_contato.png"),
                      )
                    ],
                  ),
                )
              ],
            ),
          )

    );
  }


}
