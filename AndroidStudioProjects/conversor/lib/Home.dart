import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _controllerCelsius = TextEditingController();
  TextEditingController _controllerFahrenheit = TextEditingController();
  String _textoResultado = "";
  String _textoResultado2 = "";

  void _calcular() {
    double precoCelsius = double.tryParse(_controllerCelsius.text);
    double precoFahrenheit = double.tryParse(_controllerFahrenheit.text);

    if (precoCelsius == null || precoFahrenheit == null) {
      setState(() {
        _textoResultado = "Número inválido, digite números maiores que 0 e utilizando (.)";
      });

    } else {
      setState(() {
        _textoResultado = "Número válido, faço cálculo";
      });
    }
      double resul2 = 0;
      double resul = 0;
      resul = (precoCelsius*9/5) + 32;
      resul2 = (precoFahrenheit - 32) / 1.8;
      _textoResultado = "Fahrenheit: "+ resul.toStringAsPrecision(3);
      _textoResultado2 = "Celsius: "+ resul2.toStringAsPrecision(3);

    _limparCampos();
  }

  void _limparCampos(){

    _controllerCelsius.text = "";
    _controllerFahrenheit.text = "";
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversor de Temperatura"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Nunca foi tão fácil converter uma temperatura.",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Temperatura em Fahrenheit ex: 32.1"
                ),
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black
                ),
                controller: _controllerCelsius,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Temperatura em Celsius ex: 32.1"
                ),
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black
                ),
                controller: _controllerFahrenheit,
              ),

              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                    color: Colors.redAccent,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Text("Converter",
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                    onPressed: _calcular),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(_textoResultado,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(_textoResultado2,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
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
