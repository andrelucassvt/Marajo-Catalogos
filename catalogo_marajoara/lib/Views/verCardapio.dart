import 'package:flutter/material.dart';

class VerCardapio extends StatefulWidget {
  final hero;
  VerCardapio({this.hero});
  @override
  _VerCardapioState createState() => _VerCardapioState();
}

class _VerCardapioState extends State<VerCardapio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Imagem'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
        body: Hero(
          tag: widget.hero.toString(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(widget.hero))),
          ),
        ));
  }
}
