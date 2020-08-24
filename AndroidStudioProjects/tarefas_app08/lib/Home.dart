import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _listaTarefas = ["ir ao mercado", "estudar", "jogar", "trabalhar"];

  _salvarArquivo()async{

    final diretorio = await getApplicationDocumentsDirectory();
    print("Caminho: "+ diretorio.path);

  }

  @override
  Widget build(BuildContext context) {

    _salvarArquivo();

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Tarefas"),
        backgroundColor: Colors.purple,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
          backgroundColor: Colors.purple,
          onPressed: (){

            showDialog(
                context: context,
            builder: (context){
                  return AlertDialog(
                    title: Text("Adicionar Tarefa"),
                    content: TextField(
                      decoration: InputDecoration(
                        labelText: "Digite sua Tarefa"
                      ),
                      onChanged: (text){

                      },
                    ),
                    actions: [
                      FlatButton(
                        child: Text("Cancelar"),
                        onPressed: ()=> Navigator.pop(context),
                      ),
                      FlatButton(
                        child: Text("Salvar"),
                        onPressed: (){

                          Navigator.pop(context);
                        },
                      )
                    ],
                  );
            }
            );
          }
          ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _listaTarefas.length,
                itemBuilder: (context,index){

                  return ListTile(
                    title: Text(_listaTarefas[index]),
                  );
                }
            ),
          )
        ],
      ),
    );
  }
}
