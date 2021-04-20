import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Column(
        children: [
          Expanded(
          child: Container(
            margin: EdgeInsets.all(50),
            child: Column(
              children: [ //reponsavel pela coluna principal 'colorida'
                CardContainer(cor: Colors.orange,),
                CardContainer(cor: Colors.white,),
                CardContainer(cor: Colors.yellow,),
              ],
            ),
          ),
          ),
          Container(
            height: 100,
            color: Colors.brown,
            child: Row( // responsavel pelos botões
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ColoredContainer(cor: Colors.green,),
                ColoredContainer(cor: Colors.red,),
                ColoredContainer(cor: Colors.blue,),
              ]
            ),
          )
        ],
       ),
    );
  }
}

class CardContainer extends StatelessWidget {
  final Color cor;

  CardContainer({Key key, this.cor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      height: 100,
      color: cor,
    );
  }
}

class ColoredContainer extends StatelessWidget {
  final Color cor;

  ColoredContainer({Key key, this.cor}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: cor,
        border: Border.all(
        color: Colors.white,
        width: 8,
      ),
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}

