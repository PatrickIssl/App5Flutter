import 'package:cara_ou_coroa/Home.dart';
import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {

  int value = 0;

   Jogar({this.value});

  @override
  _JogarState createState() => _JogarState();

}

class _JogarState extends State<Jogar> {
  var _imagens = ["imagens/moeda_cara.png", "imagens/moeda_coroa.png"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(131, 255, 188, 67),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(_imagens[widget.value]),
            Padding(
              padding: EdgeInsets.all(30),
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Image.asset("imagens/botao_voltar.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
