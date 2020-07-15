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

       Card(
        color: Colors.white,
        elevation: 4.0,
        child:Text("Pessoas por trás do projeto",style: TextStyle(fontSize: 25.0)),
       ),  
     

      Card(
        color: Colors.white,
        elevation: 4.0,
        child: Column(children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image:AssetImage("Imagens/Andre.jpg")
                )
              ),
            ),
            Text("-André Lucas Salvador-",style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
            ),
            Text("Acadêmico de ciência da computação.",
            textAlign: TextAlign.center,
            ),
            Text("Desenvolvedor Java.",
            textAlign: TextAlign.center,
            ),
            Text("Desenvolvedor Web e Mobile com flutter.",
            textAlign: TextAlign.center,
            ),
            Text("Analista de dados utilizando a linguagem Python",
            textAlign: TextAlign.center,
            ),
          ],),

      ),
      
      Padding(padding: EdgeInsets.all(10.0)),

      Card(
        color: Colors.white,
        elevation: 4.0,
        child:Column(children: <Widget>[
          Container(
              alignment: Alignment.topCenter,
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image:AssetImage("Imagens/Yanka.jpeg")
                  )
                ),
              ),
              Text("-Yanka Costa-",style: TextStyle(fontSize: 17.0),),
              Text("Academica de medicina veterinária."),
              Text("Sócia proprietária do tchaba Marajó."),

        ],),
      ),
      
      Padding(padding: EdgeInsets.all(10.0)),

      Card(
        color: Colors.white,
        elevation: 4.0,
        child:Text("Apoio:",style: TextStyle(fontSize: 25.0),),
       ),  
      
      Card(
        color: Colors.white,
        elevation: 4.0,
        child:Row(children: <Widget>[
          Container(
              alignment: Alignment.topCenter,
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image:AssetImage("Imagens/extra.jpg"),
                  )
                ),
              ),
              
              Text(" Jornal Extra do Pará", style: TextStyle(fontSize: 20.0),)

        ],),
      ),
      Card(
        color: Colors.white,
        elevation: 4.0,
        child:Row(children: <Widget>[
          Container(
              alignment: Alignment.topCenter,
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image:AssetImage("Imagens/dario.jpg"),
                  )
                ),
              ),
              
              Text(" Diário Pedrosa", style: TextStyle(fontSize: 20.0),)

        ],),
      ),
      Card(
        color: Colors.white,
        elevation: 4.0,
        child:Row(children: <Widget>[
          Container(
              alignment: Alignment.topCenter,
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image:AssetImage("Imagens/bufalo.jpg"),
                  )
                ),
              ),
              
              Text(" Bufallos Brocados", style: TextStyle(fontSize: 20.0),)

        ],),
      ),
      ],),
    
     );
  }
}