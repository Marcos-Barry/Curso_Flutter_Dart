import 'package:flutter/material.dart';
import 'package:palitinho/Palitinho.dart';

void main() {
  runApp(MaterialApp(
    home: Palitinho(),
    debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xff795548),
          scaffoldBackgroundColor: Color(0xfff5e9b9)
  ),
  ));
}

