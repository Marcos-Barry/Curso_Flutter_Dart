import 'package:flutter/material.dart';
import 'Api.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  static String key = "AIzaSyBRZ82qDoabUQ5Lr1g6EwSlQ3sD_DuzvPk";
  YoutubeAPI api = YoutubeAPI(key);
  List<YT_API> ytResult = [];

  callAPI() async {
    String query = "Java";
    ytResult = await api.search(query);
    ytResult = await api.nextPage();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    callAPI();
    print('hello');
  }

  @override
  Widget build(BuildContext context) {

      return Scaffold(

        body: Container(
          child: ListView.builder(
            itemCount: ytResult.length,
            itemBuilder: (_, int index) => listItem(index),
          ),
        ),
      );
    }

    Widget listItem(index) {
      return Card(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 7.0),
          padding: EdgeInsets.all(12.0),
          child: Row(
            children: <Widget>[
              Image.network(
                ytResult[index].thumbnail['default']['url'],
              ),
              Padding(padding: EdgeInsets.only(right: 20.0)),
              Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          ytResult[index].title,
                          softWrap: true,
                          style: TextStyle(fontSize: 18.0),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 1.5)),
                        Text(
                          ytResult[index].channelTitle,
                          softWrap: true,
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 3.0)),
                        Text(
                          ytResult[index].url,
                          softWrap: true,
                        ),
                      ]))
            ],
          ),
        ),
      );
    }
}

