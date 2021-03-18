import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Imc.dart';

class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _controllerAltura = TextEditingController();
  TextEditingController _controllerPeso = TextEditingController();
  String _textoResultado = "";
  int img = 0;


  void _limparCampos(){

    _controllerAltura.text = "";
    _controllerPeso.text = "";
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }

  Future<void> _calcular() async {
    double altura = double.tryParse(_controllerAltura.text);
    double peso = double.tryParse(_controllerPeso.text);

    if (altura == null || peso == null) {
      setState(() {
        _textoResultado = "Número inválido, digite números maiores que 0 e utilizando (.)";
      });

    } else {
      setState(() {
        _textoResultado = "Número válido, faço cálculo";
      });
    }

    double resul = 0;
    resul = peso /(altura*altura);

    if(resul<19){
      setState(() {
        _textoResultado = "Você está abaixo do peso";
        img = 1;
      });
    }else if(resul<25){
      setState(() {
        _textoResultado = "Você está no peso ideal";
        img = 2;
      });
    }else if(resul<30){
      setState(() {
        _textoResultado = "Você está com sobrepeso";
        img = 3;
      });
    }else if(resul >= 30){
      setState(() {
        _textoResultado = "Você está com obesidade";
        img = 4;
      });
    }

    _limparCampos();

    var navigation = await Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Imc(resut:_textoResultado, imge: img,)));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calcular IMC"),
          backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text("Informe sua altura e peso, para calcular o IMC:",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight:FontWeight.bold
                        ),
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.number ,
                    decoration: InputDecoration(
                        labelText: "Digite sua altura ex: 1.90"
                    ),
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black
                    ),
                    controller: _controllerAltura,
                  ),
                  TextField(
                    keyboardType: TextInputType.number ,
                    decoration: InputDecoration(
                        labelText: "Digite seu peso ex: 81.5"
                    ),
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black
                    ),
                    controller: _controllerPeso,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: RaisedButton(
                        color: Colors.redAccent,
                        textColor: Colors.white,
                        padding: EdgeInsets.all(15),
                        child: Text("Calcular",
                          style: TextStyle(
                              fontSize: 20
                          ),
                        ),
                        onPressed: _calcular),
                  )
                ],
            ),
        ),
      ),
    );
  }
}
