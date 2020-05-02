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

      body:Column(
        
        children: <Widget>[

          Text("Salvaterra",
          style: TextStyle(color: Colors.black,fontSize: 25.0),)
         
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
                labelBackgroundColor: Colors.blue)
          ],
      ),

      //Barra
       bottomNavigationBar: BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Colors.orange,
      child: Container(height: 50.0,),
      ),


      //Botao no meio de navigation
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}