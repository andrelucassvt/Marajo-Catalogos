import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() {
  runApp(MaterialApp(

    home: Home() ,
  ));
}




 class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Marajó catálogo",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.orange,
      ),
      
      
      body: Stack(children: <Widget>[

      new Image.asset('Imagens/Marajoara.jpg',fit: BoxFit.fill,height: 1000.0,),

      //Texto inicial
      Padding(padding: EdgeInsets.all(10.0),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

          Text("Bem vindo ao catálago marajoara.",
          style: TextStyle(color: Colors.white70,fontSize: 25.0,backgroundColor:Colors.black45,))
         
        ],), 
      ),
      

      ],),

      //Botao
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
          animatedIconTheme: IconThemeData(size: 22),
          backgroundColor: Colors.orange,
          visible: true,
          curve: Curves.bounceIn,
          children: [
                // FAB 1
                SpeedDialChild(
                child: Icon(Icons.assignment_turned_in),
                backgroundColor: Colors.blue,
                onTap: () { /* do anything */ },
                label: 'Salvaterra',
                labelStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 16.0),
                labelBackgroundColor: Colors.blue),
                // FAB 2
                SpeedDialChild(
                child: Icon(Icons.assignment_turned_in),
                backgroundColor: Colors.blue,
                onTap: () {
                   setState(() {
                      
                   });
                },
                label: 'Soure',
                labelStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 16.0),
                labelBackgroundColor: Colors.blue),

          ],
      ),

      
    );
    
  }
}