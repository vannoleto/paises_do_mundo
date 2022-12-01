import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Paises, clica na sigla pra mudar"),
          backgroundColor: Colors.blue,
        ),
        body: Paises(),
      ),
    ),
  );
}

class Paises extends StatefulWidget {
  const Paises({Key? key}) : super(key: key);

  @override
  State<Paises> createState() => _PaisesState();
}

class _PaisesState extends State<Paises> {
  //16 de tamanho
  @override
  final vetor = [
    "ad",
    "ae",
    "af",
    "ag",
    "ai",
    "al",
    "am",
    "ao",
    "aq",
    "ar",
    "as",
    "at",
    "au",
    "aw",
    "ax",
    "az"
  ];
  var i = 0;
  var aux = 'ad';
  Widget build(BuildContext context) {
    return Center(
        child: Stack(children: <Widget>[
      Container(
        alignment: Alignment.center,
        width: 270,
        height: 270,
        child: Image.asset("imagens/$aux.png"),
      ),
      Container(
        alignment: Alignment.bottomCenter,
        width: 300,
        height: 300,
        child: TextButton(
          onPressed: () {
            setState(() {
              i = Random().nextInt(15) + 1;
              aux = vetor[i];
            });
          },
          child: Text("Sigla: $aux",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0)),
        ),
      ),
    ]));
  }
}
