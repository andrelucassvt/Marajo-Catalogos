import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

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
        //Tia conce
         Card(
            color: Colors.white,
            margin: EdgeInsets.all(10.0),
            elevation: 5.0,
              child: Container(
                height: 60.0,
                width: 60.0,
                  child: InkWell(
                    splashColor:  Colors.deepOrange,
                    onTap: (){
                      showDialog<String>(context: context,
                      builder: (BuildContext context)=> AlertDialog(
                        title: Text(servico),
                        content: ListView(children: <Widget>[
                          Text("*Preços sujeitos a alteração",style: TextStyle(color:Colors.orange),),
                          Container(
                            height: 350,
                            child: PhotoView(imageProvider: AssetImage("ImagensSoure/cardapio/cardTiaCon.jpeg")),
                          ),
                          
                          Padding(padding: EdgeInsets.all(10.0)),
                          Text("Contato:", style: TextStyle(fontSize: 20.0),),
                          SelectableText("(91) 998294095"),
                          
                        ],),
                        actions: <Widget>[
                          FlatButton(onPressed: ()=> Navigator.pop(context, "OK"), 
                          child: Text("OK"))
                        ],
                      )
                      );
                    },
                    child: Row(children: <Widget>[
                        Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("ImagensSoure/logotiaCon.jpeg"))
                        )),
                          Expanded(child: Text(" Tia Conce",style: TextStyle(fontSize: 19.0)))
                        ],),
                      ),
                    ),
            ),
            //Tia conce

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