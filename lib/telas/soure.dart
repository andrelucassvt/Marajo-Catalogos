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

            //FAmilia seila
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
                          Text("* 2 CLICKS PARA LIBERAR O ZOOM",style: TextStyle(color:Colors.blue),),
                          Container(
                            height: 350,
                            child: PhotoView(imageProvider: AssetImage("ImagensSoure/cardapio/cardFamilia.jpeg")),
                          ),
                          
                          Padding(padding: EdgeInsets.all(10.0)),
                          Text("Contato:", style: TextStyle(fontSize: 20.0),),
                          SelectableText("(91) 984716623"),
                          
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
                            image: AssetImage("ImagensSoure/Logofamilia.jpeg"))
                        )),
                          Expanded(child: Text(" Famiglia gentile",style: TextStyle(fontSize: 19.0)))
                        ],),
                      ),
                    ),
            ),
            //Fim familia seila

            //Na brasa siqueira
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
                          Text("* 2 CLICKS PARA LIBERAR O ZOOM",style: TextStyle(color:Colors.blue),),
                          Container(
                            height: 350,
                            child: PhotoView(imageProvider: AssetImage("ImagensSoure/cardapio/CardBrasa1.jpeg")),
                          ),
                          Container(
                            height: 350,
                            child: PhotoView(imageProvider: AssetImage("ImagensSoure/cardapio/CardBrasa2.jpeg")),
                          ),
                          
                          
                          Padding(padding: EdgeInsets.all(10.0)),
                          Text("Contato:", style: TextStyle(fontSize: 20.0),),
                          SelectableText("(91) 985183789"),
                          SelectableText("(91) 994707963"),
                          
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
                            image: AssetImage("ImagensSoure/LogoBrasa.jpeg"))
                        )),
                          Expanded(child: Text(" Na Brasa Siqueira",style: TextStyle(fontSize: 19.0)))
                        ],),
                      ),
                    ),
            ),
            //Fim na brasa

            //PAtu anu
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
                          Text("* 2 CLICKS PARA LIBERAR O ZOOM",style: TextStyle(color:Colors.blue),),
                          Container(
                            height: 350,
                            child: PhotoView(imageProvider: AssetImage("ImagensSoure/cardapio/cardPatu.jpeg")),
                          ),
                     
                          
                          Padding(padding: EdgeInsets.all(10.0)),
                          Text("Contato:", style: TextStyle(fontSize: 20.0),),
                          SelectableText("(91) 983763720"),
                          SelectableText("(91) 982556970"),
                          SelectableText("(91) 982929847"),
                          SelectableText("(FIXO) 37411489"),
                          
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
                            image: AssetImage("ImagensSoure/logoPatu.jpeg"))
                        )),
                          Expanded(child: Text(" Patú Anú",style: TextStyle(fontSize: 19.0)))
                        ],),
                      ),
                    ),
            ),
            //fim patu ano

            //ACAI
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
                          Text("* 2 CLICKS PARA LIBERAR O ZOOM",style: TextStyle(color:Colors.blue),),
                          Container(
                            height: 350,
                            child: PhotoView(imageProvider: AssetImage("ImagensSoure/cardapio/AcaiSoure.jpeg")),
                          ),
                          
                          
                          Padding(padding: EdgeInsets.all(10.0)),
                          Text("Contato:", style: TextStyle(fontSize: 20.0),),
                          SelectableText("(91) 982550198"),
                          SelectableText("(91) 984687790"),
                          
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
                            image: AssetImage("ImagensSoure/logoAcai.jpeg"))
                        )),
                          Expanded(child: Text(" AÇAI DO HULK",style: TextStyle(fontSize: 19.0)))
                        ],),
                      ),
                    ),
            )
            //FIm ACAI


      ],),

      //***************OUTROS ESTABELECIMENTOS**************/
      ListView(children: <Widget>[

      //3 irmaões
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
                          Text("* 2 CLICKS PARA LIBERAR O ZOOM",style: TextStyle(color:Colors.blue),),
                          Container(
                            height: 350,
                            child: PhotoView(imageProvider: AssetImage("ImagensSoure/cardapio/cardSou3.jpeg")),
                          ),
                          
                          Padding(padding: EdgeInsets.all(10.0)),
                          Text("Contato:", style: TextStyle(fontSize: 20.0),),
                          SelectableText("(91) 984401314"),
                          
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
                            image: AssetImage("ImagensSoure/logoSou3.jpeg"))
                        )),
                          Expanded(child: Text(" Deposito 3 IRMÃOS",style: TextStyle(fontSize: 19.0)))
                        ],),
                      ),
                    ),
            ),
      //Fim 3 irmaos

      ],)

    ];


    return Scaffold(
  

      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: false,
            snap: false,
            expandedHeight: 155.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Soure",style: TextStyle(color: Colors.white),),
              background: Image.asset("Imagens/SoureTe.jpg",fit: BoxFit.fill,),
              centerTitle: true,
            ),
          ),  
         
        SliverFillRemaining(
          
          child:  pages[selectPage],
           
             
          )
        ],
      ),
      

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