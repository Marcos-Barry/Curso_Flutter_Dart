import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


// comunicação sincrona e assincrona
// sincrona: resposta imediata de ambos os lados
// assincrona: requer um determinado tempo de resposta

  String _resultado = "Resultado";
  TextEditingController _controllerCep = TextEditingController();
  _recuperarCep() async{

    String cepDigitado = _controllerCep.text;
    String url = "http://viacep.com.br/ws/${cepDigitado}/json";
    http.Response response;

    // await: declaro que vou aguardar a resposta
    response = await http.get(url);
    Map<String,dynamic> retorno =     json.decode(response.body);
    String logradouro = retorno["logradouro"];
    String complemento = retorno["complemento"];
    String bairro = retorno["bairro"];
    String localidade = retorno["localidade"];

    setState(() {
      _resultado = "${logradouro}, ${complemento}, ${bairro}, ${localidade}  ";
    });

    print("Resposta logradouro: ${logradouro} \n "
        "complemento: ${complemento} \n"
        " bairro: ${bairro} \n"
        " localidade: ${localidade}");

    //print("resposta: "+ response.statusCode.toString());
   // print("resposta: "+ response.body);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo de Serviço Web"),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite o cep: ex: 10345654"
              ),
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87
              ),
              controller: _controllerCep,
            ),
            RaisedButton(
              child: Text("Clique aqui"),
              onPressed: _recuperarCep,
            ),
          Text(_resultado)
          ],
        ),
      ),
    );
  }
}
