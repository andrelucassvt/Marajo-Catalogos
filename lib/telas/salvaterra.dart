import 'package:flutter/material.dart';


class salvaterraHome extends StatefulWidget {
  @override
  _salvaterraState createState() => _salvaterraState();
}
    String servico = "Serviços:";
    int selectPage = 0;

class _salvaterraState extends State<salvaterraHome> {
  @override
  Widget build(BuildContext context) {
    //++++++++++++++++++AQUI VOU ADICIONAR AS PAGINAS+++++++++++++++++\\
    final _pages = [

      //////////LISTA COM RESTAURANTES DE COMIDA/////////////
      ListView(children: <Widget>[

          //LOJA UMUARAMA
        Card(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("Imagens/umuarama.jpg"))
                ),
                child: InkWell(
                  onTap: (){
                    showDialog<String>(context: context,
                    builder: (BuildContext context)=> AlertDialog(
                      title: Text(servico),
                      content: Column(children: <Widget>[
                        Text("Oi")
                      ],),
                      actions: <Widget>[
                        FlatButton(onPressed: ()=> Navigator.pop(context, "OK")
                        , child: Text("OK"))
                      ],
                    )
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[
                  Text("Pousada Umuarama",style: TextStyle(color: Colors.black,fontSize: 19.0),),
                  
                ],),
                )
              ],
            ),
            ),
        ),
        //FIM UMUARAMA

        //LOJA SABOR MARAJO
        Card(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("Imagens/sabormarajo.jpg"))
                ),
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: (){
                    showDialog<String>(context: context,
                    builder: (BuildContext context)=> AlertDialog(
                      title: Text(servico),
                      content: ListView(children: <Widget>[
                        Text("*Preços sujeitos a alteração",style: TextStyle(color:Colors.orange),),
                        Image.asset("Imagens/cardapio/SaborCardPizza.jpeg",fit: BoxFit.cover,height: 350.0,),
                        Image.asset("Imagens/cardapio/SaborCardLanche.jpeg",fit: BoxFit.cover,height: 350.0,),
                        Image.asset("Imagens/cardapio/SaborCardCosta.jpeg",fit: BoxFit.cover,height: 350.0,),

                        Text("Contato:",style: TextStyle(fontSize: 20.0),),
                        SelectableText("(91) 989734333")
                      ],),
                      actions: <Widget>[
                        FlatButton(onPressed: ()=> Navigator.pop(context, "OK")
                        , child: Text("OK"))
                      ],
                    )
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[
                  Text("Sabor marajó",style: TextStyle(color: Colors.black,fontSize: 19.0),),
                  
                ],),
                )
              ],
            ),
            ),
        ),
        //FIM SABOR MARAJO

        //Loja MURRAS
        Card(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("Imagens/murras.PNG"))
                ),
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: (){
                    showDialog<String>(context: context,
                    builder: (BuildContext context)=> AlertDialog(
                      title: Text(servico),
                      content: ListView(children: <Widget>[
                        Text("*Preços sujeitos a alteração",style: TextStyle(color:Colors.orange),),
                        Image.asset("Imagens/cardapio/cardapioMurra.jpeg",fit: BoxFit.cover,height: 350.0,),
                        Text("Contato:", style: TextStyle(fontSize: 20.0),),
                        SelectableText("(91) 992480905")
                      ],),
                      actions: <Widget>[
                        FlatButton(onPressed: ()=> Navigator.pop(context, "OK"), 
                        child: Text("OK"))
                      ],
                    )
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[
                  Text("Murrah's",style: TextStyle(color: Colors.black,fontSize: 19.0),),
                ],),
                )
              ],
            ),
            ),
        ),
        //FIM MURRAS

        //Loja BOCA QUENTE
          Card(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("Imagens/bocaQuente.jpeg"))
                ),
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: (){
                    showDialog<String>(context: context,
                    builder: (BuildContext context)=> AlertDialog(
                      title: Text(servico),
                      content: ListView(children: <Widget>[
                        Text("*Preços sujeitos a alteração",style: TextStyle(color:Colors.orange),),
                        Image.asset("Imagens/cardapio/bocaQuenteCardapio.jpeg",fit: BoxFit.cover,
                        height: 350.0,),
                        
                        Text("Média---------15 reais"),
                        Text("Grande--------25 reais"),
                        Text("Família---------30 reais"),

                        Text("Contato:",style: TextStyle(fontSize: 20.0),),
                        SelectableText("(91) 984980664"),
                        SelectableText("(91) 992869960")
                      ],),
                      actions: <Widget>[
                        FlatButton(onPressed: ()=> Navigator.pop(context, "OK"), 
                        child: Text("OK"))
                      ],
                    )
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[
                  Text("Pizza: Boca quente",style: TextStyle(color: Colors.black,fontSize: 19.0),),
                ],),
                )
              ],
            ),
            ),
        ),
        //Fim BOCA QUENTE

        //Loja Dinos Burguers
         Card(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("Imagens/cardapio/ChapasDinoCard.jpeg"))
                ),
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: (){
                    showDialog<String>(context: context,
                    builder: (BuildContext context)=> AlertDialog(
                      title: Text(servico),
                      content: ListView(children: <Widget>[

                        Text("*Preços sujeitos a alteração",style: TextStyle(color:Colors.orange),),
                        Image.asset("Imagens/cardapio/BebidasDinoCard.jpeg",fit: BoxFit.cover,
                        height: 250.0,),
                        Padding(padding: EdgeInsets.all(10.0)),
                        Image.asset("Imagens/LogoDinos.jpeg",fit: BoxFit.cover,
                        height: 350.0,),
                        Padding(padding: EdgeInsets.all(10.0)),
                        Image.asset("Imagens/cardapio/HambDinoCard2.jpeg",fit: BoxFit.cover,
                        height: 400.0,),
                        Padding(padding: EdgeInsets.all(10.0)),
                        Image.asset("Imagens/cardapio/HambDinoCard3.jpeg",fit: BoxFit.cover,
                        height: 400.0,),
                        Padding(padding: EdgeInsets.all(10.0)),
                        Image.asset("Imagens/cardapio/HambDinoCard1.jpeg",fit: BoxFit.cover,
                        height: 200.0,),
                        
                        Text("Contato:",style: TextStyle(fontSize: 20.0),),
                        SelectableText("(91) 991781838")
                        
                      ],),
                      actions: <Widget>[
                        FlatButton(onPressed: ()=> Navigator.pop(context, "OK"), 
                        child: Text("OK"))
                      ],
                    )
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[
                  Text("Dino´s Burgers",style: TextStyle(color: Colors.black,fontSize: 19.0),),
                ],),
                )
              ],
            ),
            ),
        ),
        //Fim Dinos Burguers

        //Loja Kley Lanches
        Card(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("Imagens/LogoKley.jpeg"))
                ),
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: (){
                    showDialog<String>(context: context,
                    builder: (BuildContext context)=> AlertDialog(
                      title: Text(servico),
                      content: ListView(children: <Widget>[
                        Text("*Preços sujeitos a alteração",style: TextStyle(color:Colors.orange),),
                        Image.asset("Imagens/cardapio/cardKley.jpeg",fit: BoxFit.cover,
                        height: 250.0,),
                        Padding(padding: EdgeInsets.all(10.0)),
                        Image.asset("Imagens/cardapio/cardKley2.jpeg",fit: BoxFit.cover,
                        height: 350.0,),
                        Text("Contato:", style: TextStyle(fontSize: 20.0),),
                        SelectableText("(91) 983766742")
                      ],),
                      actions: <Widget>[
                        FlatButton(onPressed: ()=> Navigator.pop(context, "OK"), 
                        child: Text("OK"))
                      ],
                    )
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[
                  Text("Kley lanches",style: TextStyle(color: Colors.black,fontSize: 19.0),),
                ],),
                )
              ],
            ),
            ),
        ),
        //FIM Loja  kley lanches

        //Loja JAPA LANCHES
        Card(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("Imagens/LogoJapa.jpeg"))
                ),
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: (){
                    showDialog<String>(context: context,
                    builder: (BuildContext context)=> AlertDialog(
                      title: Text(servico),
                      content: ListView(children: <Widget>[
                        Text("*Preços sujeitos a alteração",style: TextStyle(color:Colors.orange),),
                        Image.asset("Imagens/cardapio/cardJapa1.jpeg",fit: BoxFit.cover,
                        height: 250.0,),
                        Padding(padding: EdgeInsets.all(10.0)),
                        Image.asset("Imagens/cardapio/carJapa2.jpeg",fit: BoxFit.cover,
                        height: 350.0,),
                        Image.asset("Imagens/cardapio/cardJapa3.jpeg",fit: BoxFit.cover,
                        height: 250.0,),
                        Padding(padding: EdgeInsets.all(10.0)),
                        Image.asset("Imagens/cardapio/carJapa4.jpeg",fit: BoxFit.cover,
                        height: 350.0,),
                        Text("Contato:", style: TextStyle(fontSize: 20.0),),
                        SelectableText("(91) 982512392"),
                        SelectableText("(91) 993358406")

                      ],),
                      actions: <Widget>[
                        FlatButton(onPressed: ()=> Navigator.pop(context, "OK"), 
                        child: Text("OK"))
                      ],
                    )
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[
                  Text("Kley lanches",style: TextStyle(color: Colors.black,fontSize: 19.0),),
                ],),
                )
              ],
            ),
            ),
        ),
        //FIM loja JAPA LANCHES


      ],),
      //++++++++++++++++++++++FIM LOJAS DE COMIDA+++++++++++++++++++\\
      
      /////////////LISTA COM OUTROS ESTABELECIMENTOS///////////////////
      ListView(children: <Widget>[
        
      ],)
      //+++++++++++++++++FIM OUTROS ESTABELECIMENTOS+++++++++++++++++++//
    ]; 



    //***************PARTE PRINCIPAL DO APP*******************\\
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Text("Salvaterra", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.orange,
      ),

      body: _pages[selectPage],
      
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