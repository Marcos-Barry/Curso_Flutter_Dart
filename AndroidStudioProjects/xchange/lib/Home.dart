import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as Auth;
import 'package:firebase_core/firebase_core.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _emailUsuario = "";
  Future _recuperarEmail() async {
    Auth.FirebaseAuth auth = Auth.FirebaseAuth.instance;
    Auth.User usuarioLogado = await auth.currentUser;

    setState(() {
      _emailUsuario = usuarioLogado.email;
    });
  }

  @override
  void initState() {
    _recuperarEmail();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return Scaffold(
      appBar: AppBar(
        title: Text("X-Change"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Container(
        child: Text(_emailUsuario),
      ),
    );
  }
}
