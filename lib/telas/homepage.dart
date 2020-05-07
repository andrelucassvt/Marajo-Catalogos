import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:marajocatalogo/telas/salvaterra.dart';
import 'package:marajocatalogo/telas/soure.dart';


class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
      body:Stack(children: <Widget>[
        
        Image.asset("Imagens/TesouroMarajoara2.JPG",fit: BoxFit.cover,height: 1000,),
        
        Column(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[

          Align(alignment: Alignment.bottomLeft,
          child: Text("   Olá, bem-vindo(a) ao ",style: TextStyle(color: Colors.white,fontSize: 15.0),),
          ),
          Padding(padding: EdgeInsets.all(5.0)),
          Align(alignment: Alignment.bottomLeft,
          child:  Text("  Catálogo",style: TextStyle(color: Colors.white,fontSize: 25.0),)
          ),

          Align(alignment: Alignment.bottomLeft,
          child:  Text("  Marajoara.",style: TextStyle(color: Colors.white,fontSize: 25.0),),
          ),
         
          Padding(padding: EdgeInsets.all(0.0)),
          
          Align(
            alignment: Alignment.bottomLeft,
            child:ButtonBar(
            alignment: MainAxisAlignment.start,
            children: <Widget>[
              FlatButton(onPressed: (){}, child: Text("Saiba mais   ",style: TextStyle(color: Colors.yellow),))
            ],
          ),
          ),

        ],),

        Column(mainAxisAlignment: MainAxisAlignment.end,children: <Widget>[
           Align(alignment: Alignment.bottomLeft,
          child: Text("   Escolha o catálogo: ",style: TextStyle(color: Colors.white,fontSize: 15.0),),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              color: Colors.orange,
              margin: EdgeInsets.all(10.0),
              child: Container(
                height: 50,
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> salvaterraHome()));
                  },
                  child: Row(children: <Widget>[
                    Expanded(child: Center(
                      child:  
                      Text("Salvaterra",style: TextStyle(color: Colors.white),)),)
                  ],)
                ),
              ),
            )
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Card(     
              color: Colors.blue,
              margin: EdgeInsets.all(10.0),
              child: Container(
                height: 50,
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> soureHome()));
                  },
                  child: Row(children: <Widget>[
                    Expanded(child: Center(
                      child:  
                      Text("Soure",style: TextStyle(color: Colors.white),)),)
                  ],)
                ),
              ),
            )
          ),


        ],)
        
        
      ],),
      
     
      
    );
   
  }
}
