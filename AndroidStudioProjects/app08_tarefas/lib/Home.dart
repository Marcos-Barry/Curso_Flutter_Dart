import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Tarefas"),
        backgroundColor: Colors.purple,
      ),
        body: Text("Conteudo"),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        //floatingActionButton: FloatingActionButton(
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          elevation: 6,
          icon: Icon(Icons.add_shopping_cart),
          label: Text("Adicionar"),
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(0)
          ),
          onPressed: (){
            print("Resultado: botao pressionado");
          },
          //mini: true,
          /*child: Icon(Icons.add),
            onPressed: (){
              print("Resultado: botao pressionado");
            }*/
            ),
        bottomNavigationBar: BottomAppBar(
          //shape: CircularNotchedRectangle(),
          child: Row(
            children: [
              IconButton(
                onPressed: (){
                  
                },
                icon: Icon(Icons.menu),
              )
            ],
          ),
        ),
    );
  }
}
