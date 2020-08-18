import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Frases do Dia'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numeroAleatorio = 0;
  List _frases = [
    'Não espere.... Não espere até que seja tarde demais. A oportunidade pode não bater duas vezes a sua porta.',
    'Amanhã será passado. Seja o que for que o dia te trouxe hoje, amanhã será passado. Guarda só o que te fizer bem.',
    'Assim como toda a felicidade é passageira, nenhum sofrimento será eterno.',
    'É engraçado o dia a dia, nada muda. Mas quando você olha para trás, tudo é diferente.',
    'O importante não é vencer todos os dias, mas lutar sempre!'
  ];

  void _incrementCounter() {
    setState(() {

      _numeroAleatorio = new Random().nextInt(5);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pressione o botão para gerar uma frase: ',
            ),
            Text(
              _frases[_numeroAleatorio],
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
