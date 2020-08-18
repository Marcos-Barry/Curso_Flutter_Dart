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
        title: Text("FloatingActionButton"),
      ),
      body: Text("Conteudo"),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.endDocked,
      //floatingActionButton: FloatingActionButton(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        elevation: 2,
        child: Icon(Icons.add),
          onPressed: (){
            print("Resultado botao pressionado.");
          }
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: (){},
                icon: Icon(Icons.menu),
            )
          ],
        ),
      ),
    );

  }
}
