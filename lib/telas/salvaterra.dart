import 'package:flutter/material.dart';



class salvaterraHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Salvaterra", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.orange,
      ),

      body: ListView(children: <Widget>[
        //LOJA 1 TESTE
        Card(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(children: <Widget>[
              Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("Imagens/umuarama.jpg"))
                ),
                child: InkWell(
                  onTap: (){},
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(children: <Widget>[
                  Text("Pousada Umuarama",style: TextStyle(color: Colors.black,fontSize: 22.0),),
                  Center(
                    child:
                     Text("Clique para mais informações",
                     style: TextStyle(color: Colors.black,fontSize: 14.0),),
                     )
                ],),
                )
              ],
            ),
            ),
        ),
        //FIM LOJA TESTE

        //Loja teste 2
        Card(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(children: <Widget>[
              Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("Imagens/sabormarajo.jpg"))
                ),
                child: InkWell(
                  onTap: (){},
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(children: <Widget>[
                  Text("Sabor marajó",style: TextStyle(color: Colors.black,fontSize: 22.0),),
                  Center(
                    child:
                     Text("Clique para mais informações",
                     style: TextStyle(color: Colors.black,fontSize: 14.0),),
                     )
                ],),
                )
              ],
            ),
            ),
        ),
        //FIM loja teste 2



      ],)
      

    );
  }
}