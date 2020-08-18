import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:convert';
import 'dart:async';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _listaTarefas = [];

  Future<File>_getFile()async{

    final diretorio = await getApplicationDocumentsDirectory();
    return File("${diretorio.path}/dados.json");

  }

  _salvarArquivo()async{

    var arquivo = await _getFile();

    //Criar dados
    Map<String, dynamic> tarefa = Map();
    tarefa["titulo"] = "ir ao mercado";
    tarefa["realizada"] = false;
    _listaTarefas.add(tarefa);

    tarefa["titulo"] = "estudar";
    tarefa["realizada"] = false;
    _listaTarefas.add(tarefa);

    String dados = json.encode(_listaTarefas);
    print(dados);
    arquivo.writeAsString(dados);
  }

  _lerArquivo()async {
    try {
      final arquivo = await _getFile();
      return arquivo.readAsStringSync();
    } catch (e) {
      return e.toString();
    }
  }
  @override
  void initState(){
    super.initState();
    _lerArquivo().then((dados){

      setState(() {
        _listaTarefas = json.decode(dados);
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    _salvarArquivo();
    print("itens: " + _listaTarefas.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Tarefas"),
        backgroundColor: Colors.purple
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
                    labelText: "Digite sua tarefa"
                  ),
                  onChanged: (text){

                  },
                ),
              actions: <Widget>[
                FlatButton(
                  child: Text("Cancelar"),
                  onPressed: ()=> Navigator.pop(context),
                ),
                FlatButton(
                  child: Text("Salvar"),
                  onPressed: (){

                    Navigator.pop(context);
                  },
                ),
              ],
              );
            });
        }
    ),
    body: Column(
      children: <Widget>[
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
      )
    );
  }
}
