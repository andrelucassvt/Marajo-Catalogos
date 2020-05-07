import 'package:flutter/material.dart';

class saibaMais extends StatefulWidget {
  @override
  _saibaMaisState createState() => _saibaMaisState();
}

class _saibaMaisState extends State<saibaMais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Informações",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),

      body: ListView(children: <Widget>[
      
      Padding(padding: EdgeInsets.all(10.0),
      child: Text("O que é catálogo marajoara ?",style: TextStyle(fontSize: 20.0),),
      )



      ],),


    );
  }
}