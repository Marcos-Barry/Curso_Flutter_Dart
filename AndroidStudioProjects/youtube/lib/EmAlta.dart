import 'package:flutter/material.dart';
import 'Api.dart';

class EmAlta extends StatefulWidget {
  @override
  _EmAltaState createState() => _EmAltaState();
}

class _EmAltaState extends State<EmAlta> {

  static String key = "AIzaSyBRZ82qDoabUQ5Lr1g6EwSlQ3sD_DuzvPk";
  YoutubeAPI api = new YoutubeAPI(key);
  List<YT_API> ytResult = [];


  callAPI() async {
    ytResult = await api.getTrends(regionCode: "BR");
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
    return Container(
      child: Center(
          child: ListView.builder(
            itemCount: ytResult.length,
            itemBuilder: (_, int index) => listItem(index),
          )
      ),
    );
  }

  Widget listItem(index) {
    return GestureDetector(
      onTap: (){

      },
      child: Card(
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
      )
    );
  }
}
