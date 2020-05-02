import 'package:flutter/material.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        
      ),

      //Barra
       bottomNavigationBar: BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Colors.orange,
      child: Container(height: 50.0,),
      ),


      //Botao no meio de navigation
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}