import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {

  bool _comidaBrasileira = false;
  bool _comidaJaponesa = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Entrada CheckBox"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[

            CheckboxListTile(
              title: Text("Comida brasileira"),
                subtitle: Text("a melhor comida do mundo!"),
                //activeColor: Colors.red,
                //selected: true,
                //secondary: Icon(Icons.add_box),
                value: _comidaBrasileira,
                onChanged: (bool valor){

                setState(() {
                  _comidaBrasileira = valor;
                });
                }
            ),

            CheckboxListTile(
                title: Text("Comida japonesa"),
                subtitle: Text("a melhor comida do mundo!"),
                //activeColor: Colors.red,
                //selected: true,
                //secondary: Icon(Icons.add_box),
                value: _comidaJaponesa,
                onChanged: (bool valor){

                  setState(() {
                    _comidaJaponesa = valor;
                  });
                }
            ),
           
           RaisedButton(
              child: Text("Salvar",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),
               onPressed: (){
                print("Comida Brasileira: " + _comidaBrasileira.toString() +
                      "\n Comida Mexicana: " + _comidaJaponesa.toString() );
                }
               )
           /* Text("Comida brasileira"),
            Checkbox(
              value: _comidaBrasileira,
              onChanged: (bool valor){

                setState(() {
                  _comidaBrasileira = valor;
                });
                print("CheckBox: " + valor.toString());
              },
            ) */
          ],
        ),
      ),
    );
  }
}

