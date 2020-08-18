import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {

  bool _escolhaUsuario = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Entrada CheckBox"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[

           /* Switch(
                value: _escolhaUsuario,
                onChanged: (bool valor){

                  setState(() {
                    _escolhaUsuario = valor;
                  });
                }
            ),
            Text("Receber notificações? ") */

            SwitchListTile(
              title: Text("Receber notificações? "),
                value: _escolhaUsuario,
                onChanged: (bool valor){

                  setState(() {
                    _escolhaUsuario = valor;
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
                 // print("resultado: " + _escolhaUsuario.toString());

                  if(_escolhaUsuario){
                    print("Escolha: ativar notificações!");
                  }else{
                    print("Escolha: desativar notificações");
                  }
                }
            )

          ],
        ),
      ),
    );
  }
}
