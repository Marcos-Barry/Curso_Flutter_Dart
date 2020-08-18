import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _itens =[];

  void _carregarItens(){

    for(int i=0; i<=10; i++){

      Map<String, dynamic> item = Map();
      item["titulo"] = "Titulo ${i} https://www.udemy.com/";
      item["descricao"] = "Descrição ${i} https://www.udemy.com/";
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {

    _carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: Text("Listas"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: _itens.length,
            itemBuilder: (context, indice){ //itemBuild precisa de retorno
              //Map<String, dynamic> item = _itens[indice];
             // print("item: ${_itens[indice]["titulo"]}");

              //ListTile serve para exibir os itens de uma lista
              return ListTile(
                onTap: (){
                  //print("cliquei ${indice}");
                  showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(

                          title: Text(_itens[indice]["titulo"],
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.orange,
                          ),
                          ),
                          titlePadding: EdgeInsets.all(25),
                          content: Text(_itens[indice]["descricao"]),
                          actions: <Widget>[
                            FlatButton(
                                padding: EdgeInsets.fromLTRB(10, 20, 60, 20),
                                onPressed: (){
                                  print("selecionado sim");
                                  Navigator.pop(context);
                                },
                                child: Text("Sim")
                            ),
                            FlatButton(
                                padding: EdgeInsets.fromLTRB(10, 20, 60, 20),
                                onPressed: (){
                                  print("selecionado não");
                                  Navigator.pop(context);
                                },
                                child: Text("Não")
                            ),
                          ],
                        );
                      }
                  );
                },
                /*onLongPress: (){
                  print("segurei o cliquei");
                },*/
                title: Text(_itens[indice]["titulo"]),
                subtitle: Text(_itens[indice]["descricao"]),
              );
            }
        ),
      ),
    );
  }
}
