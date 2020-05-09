import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marajocatalogo/telas/bolinha.dart';
import 'package:marajocatalogo/main.dart';


class carregamento extends StatefulWidget {
  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<carregamento> {
   @override
  void initState() {
    
    super.initState();
    Timer(Duration(seconds: 4),()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
      return homePage();
    })));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
        
        Text("Catálogo marajoara",
        style: TextStyle(color: Colors.white,fontSize: 20.0,decoration: TextDecoration.none),),

        Loading(
          radius: 15.0,
          dotRadius: 6.0,
        )      
        
      ],),
    );
  }
}