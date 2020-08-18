import 'package:entrada_dados/CampoTexto.dart';
import 'package:entrada_dados/EntradaRadiounButton.dart';
import 'package:entrada_dados/EntradaSlider.dart';
import 'package:entrada_dados/EntradaSwitch.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    title: "Entrada de Dados",
    //home: EntradaCheckbox(),
    //home: EntradaRadioButton(),
    //home: EntradaSwitch(),
    home: EntradaSlider(),
  ));
}

