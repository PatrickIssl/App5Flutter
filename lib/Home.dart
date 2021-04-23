import 'dart:math';

import 'package:cara_ou_coroa/Jogar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _jogar(){

    int valor = Random().nextInt(2);

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Jogar(value: valor)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(131, 255, 188, 67),

      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("imagens/logo.png"),
            Padding(
              padding: EdgeInsets.all(30),
              child: GestureDetector(
                onTap: _jogar,
                child: Image.asset("imagens/botao_jogar.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
