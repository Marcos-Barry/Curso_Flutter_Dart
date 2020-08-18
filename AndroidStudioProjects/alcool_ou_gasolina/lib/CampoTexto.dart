import 'package:flutter/material.dart';


class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.number, // definindo o tipo do teclado
              decoration: InputDecoration(
                labelText: "Digite um valor:" // acrescentando uma label
              ),
              //enabled: true,
              //maxLength: 2,
              //maxLengthEnforced: true,// limitando a quantidade de caracteres
              /*style: TextStyle(
                fontSize: 25,
                color: Colors.green
              ), */

            //  onchanged usamos pra pegar o valor digitado assim que ele for alterado ou inserido pela primeira vez
             /* onChanged: ( String e){
                print("valor digitado");
              }, */

             // onsubmitted usamos pra pegar o valor digitado quando ele clicar em confirmar
             onSubmitted: (String e){

               print("valor digitado" + e);
             },
             controller: _textEditingController,
            ),
          ),
          RaisedButton(
            child: Text("Salvar"),
            color: Colors.lightGreen,
            onPressed: (){
              print("valor digitado" + _textEditingController.text);
            },
          )
        ],
      ),
    );
  }
}
