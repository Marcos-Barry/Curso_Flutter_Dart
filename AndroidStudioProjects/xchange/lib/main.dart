import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Login.dart';
import 'Home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MaterialApp(
    title: "XChange",
    home: Login(),
    theme: ThemeData(
        primaryColor: Colors.purple,
        accentColor: Colors.purpleAccent
    ),
    debugShowCheckedModeBanner: false,
  ));
}

