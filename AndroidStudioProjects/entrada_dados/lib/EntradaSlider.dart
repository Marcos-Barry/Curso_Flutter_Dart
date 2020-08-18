import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {

  double valor = 0;
  String label = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Entrada Slider"),
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          children: <Widget>[

            Slider(
              value: valor,
              min: 0,
              max: 5,
              label: label,
              divisions: 5,
              activeColor: Colors.red,
              inactiveColor: Colors.deepPurple,
              onChanged: (double novoValor){

                setState(() {
                  valor =  novoValor;
                  label = novoValor.toString();
                });
              },
            ),

            RaisedButton(
                child: Text("Salvar",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),
                ),
                onPressed: (){

                  print("Valor selecionado: " + valor.toString());
                }
            )

          ],
        ),
      ),
    );
  }
}
