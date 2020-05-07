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
      /*backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Catálogo marajoara",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.orange,
      ),*/
        
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Catálogo marajoara",style: TextStyle(color: Colors.white),),
              background: Image.asset("Imagens/TesouroMarajoara.jpg",fit: BoxFit.fill,),
              centerTitle: true,
            ),
          ),
        SliverFillRemaining(
          child: 
            Text("Bem vindo ao catálogo marajoara",style: TextStyle(fontSize: 20.0),)
          
          
        )
        ],
      ),
      
      
      
      
      
      
      
       /*Stack(children: <Widget>[

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
      */
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
                onTap: () { 
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> salvaterraHome()));
                },
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
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> soureHome()));
                },
                label: 'Soure',
                labelStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 16.0),
                labelBackgroundColor: Colors.blue),

          ],
        ),//FIM BOTAO
      
    );
   
  }
}
