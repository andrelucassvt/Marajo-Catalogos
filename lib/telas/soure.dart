import 'package:flutter/material.dart';

class soureHome extends StatefulWidget {
  @override
  _soureHomeState createState() => _soureHomeState();
}
  String servico = "Serviços:";

  int selectPage = 0;


class _soureHomeState extends State<soureHome> {
  @override
  Widget build(BuildContext context) {

    final pages =[
      //****************RESTAURANTES DE COMIDA***********/
      ListView(children: <Widget>[

      ],),

      //***************OUTROS ESTABELECIMENTOS**************/
      ListView(children: <Widget>[

      ],)

    ];


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Soure", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.orange,
      ),

      body: pages[selectPage],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectPage,
        onTap: (int index){
          setState(() {
            selectPage = index;
          });
        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.fastfood),
        title: Text("Comida")
        ),
        BottomNavigationBarItem(icon: Icon(Icons.toc),
        title: Text("Outros")
        )],
      ),

    );
  }
}