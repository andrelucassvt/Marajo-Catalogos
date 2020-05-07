import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:background_app_bar/background_app_bar.dart';


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

        // LOJA UMUARAMA
        Card(
          color: Colors.white,
          margin: EdgeInsets.all(10.0),
          elevation: 5.0,
            child: Container(
              height: 60.0,
              width: 60.0,
                child: InkWell(
                  splashColor:  Colors.deepOrange,
                  onTap: (){showDialog<String>(context: context,
                    builder: (BuildContext context)=> AlertDialog(
                      title: Text(servico),
                      content: ListView(children: <Widget>[
                        Text("*Preços sujeitos a alteração",style: TextStyle(color:Colors.orange),),
                        Text("* 2 CLICKS PARA LIBERAR O ZOOM",style: TextStyle(color:Colors.blue),),
                        Container(
                          height: 350.0,
                          child: PhotoView(imageProvider: AssetImage("Imagens/cardapio/CardUmuarama.jpeg")),
                        ),
                        Text("*Aceitamos cartões",style: TextStyle(color:Colors.red),),
                        Text("*Entrega somente no centro de Salvaterra",style: TextStyle(color:Colors.red),),

                        Text("Contato:",style: TextStyle(fontSize: 20.0),),
                        SelectableText("(91) 983001330")


                      ],),
                      actions: <Widget>[
                        FlatButton(onPressed: ()=> Navigator.pop(context, "OK")
                        , child: Text("OK"))
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
                          image: AssetImage("Imagens/umuarama.jpg"))
                      )),
                        Expanded(child: Text(" Umuarama",style: TextStyle(fontSize: 19.0)))
                      ],),
                    ),
                  ),
          ),
         //FIM LOJA UMUARAMA

         //LOJA SABOR MARAJO
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
                            child: PhotoView(imageProvider: AssetImage("Imagens/cardapio/SaborCardPizza.jpeg")),
                          ),
                          Padding(padding: EdgeInsets.all(10.0)),
                          Container(
                            height: 450,
                            child: PhotoView(imageProvider: AssetImage("Imagens/cardapio/SaborCardLanche.jpeg")),
                          ),
                          Padding(padding: EdgeInsets.all(10.0)),
                          Container(
                            height: 350,
                            child: PhotoView(imageProvider: AssetImage("Imagens/cardapio/SaborCardCosta.jpeg")),
                          ),
                              
                          Text("Contato:",style: TextStyle(fontSize: 20.0),),
                          SelectableText("(91) 989734333")
                      ],),
                      actions: <Widget>[
                        FlatButton(onPressed: ()=> Navigator.pop(context, "OK"), 
                        child: Text("OK"))
                      ],
                      ));
                  },
                  child: Row(children: <Widget>[
                      Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("Imagens/sabormarajo.jpg"))
                      )),
                        Expanded(child: Text(" Sabor marajó",style: TextStyle(fontSize: 19.0),))
                      ],),
                    ),
                  ),
          ),
         //FIM LOJA SABOR MARAJO

         //LOJA MURRAS
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
                    child: Row(children: <Widget>[
                        Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("Imagens/murras.PNG"))
                        )),
                          Expanded(child: Text(" Murrah's",style: TextStyle(fontSize: 19.0)))
                        ],),
                      ),
                    ),
            ),
         //FIM LOJA MURRAS

         //LOJA BOCA QUENTE
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
                    child: Row(children: <Widget>[
                        Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("Imagens/bocaQuente.jpeg"))
                        )),
                          Expanded(child: Text(" Pizza: Boca quente",style: TextStyle(fontSize: 19.0)))
                        ],),
                      ),
                    ),
            ),
         //FIM LOJA BOCA QUENTE
         
         //LOJA DINOS BURGUER
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
                    child: Row(children: <Widget>[
                        Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("Imagens/cardapio/ChapasDinoCard.jpeg"))
                        )),
                          Expanded(child: Text(" Dino´s Burgers",style: TextStyle(fontSize: 19.0)))
                        ],),
                      ),
                    ),
            ),
         //FIM LOJA DINOS BURGUER

         //LOJA KLEY LANCHES
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
                        Image.asset("Imagens/cardapio/cardKley.jpeg",fit: BoxFit.cover,
                        height: 350.0,),
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
                    child: Row(children: <Widget>[
                        Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("Imagens/LogoKley.jpeg"))
                        )),
                          Expanded(child: Text(" Kley Lanches",style: TextStyle(fontSize: 19.0)))
                        ],),
                      ),
                    ),
            ),
         //FIM LOJA KLEY LANCHES

         //LOJA JAPA LANCHES
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
                          height: 400,
                          child: PhotoView(imageProvider: AssetImage("Imagens/cardapio/cardJapa1.jpeg")),
                        ),

                        Padding(padding: EdgeInsets.all(10.0)),
                        Container(
                          height: 400,
                          child: PhotoView(imageProvider: AssetImage("Imagens/cardapio/cardJapa2.jpeg")),
                        ),

                        Padding(padding: EdgeInsets.all(10.0)),
                        Container(
                          height: 400,
                          child: PhotoView(imageProvider: AssetImage("Imagens/cardapio/cardJapa3.jpeg")),
                        ),
                        Padding(padding: EdgeInsets.all(10.0)),
                        Container(
                          height: 400,
                          child: PhotoView(imageProvider: AssetImage("Imagens/cardapio/cardJapa4.jpeg")),
                        ),
                        Text("Contato:", style: TextStyle(fontSize: 20.0),),
                        SelectableText("(91) 982512392"),
                        SelectableText("(91) 993358406")

                      ],),
                      actions: <Widget>[
                        FlatButton(onPressed: ()=> Navigator.pop(context, "OK"), 
                        child: Text("OK"))
                        ],
                      ));
                    },
                    child: Row(children: <Widget>[
                        Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("Imagens/logoJapa.jpeg"))
                        )),
                          Expanded(child: Text(" Japa lanches",style: TextStyle(fontSize: 19.0)))
                        ],),
                      ),
                    ),
            ),
         //FIM LOJA JAPA LANCHES

         //LOJA DE COXINNHA
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
                          Image.asset("Imagens/CoxinhaLogo.jpeg",fit: BoxFit.cover,height: 350.0,),
                          Padding(padding: EdgeInsets.all(10.0)),
                          Image.asset("Imagens/cardapio/coxinhaCard.jpeg",fit: BoxFit.cover,height: 350.0,),
                          Text("1 prato -------- 5 reais"),
                          Text("Contato:", style: TextStyle(fontSize: 20.0),),
                          SelectableText("(91) 993220310"),
                          SelectableText("(91) 984188747"),
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
                            image: AssetImage("Imagens/CoxinhaLogo.jpeg"))
                        )),
                          Expanded(child: Text(" Delícia de coxinha",style: TextStyle(fontSize: 19.0)))
                        ],),
                      ),
                    ),
            ),
         //FIM LOJA DE COXINHA

        //Loja 3 irmao
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
                          Image.asset("Imagens/cardapio/card3ir.jpeg",fit: BoxFit.cover,height: 350.0,),
                          Padding(padding: EdgeInsets.all(10.0)),
                          Text("Contato:", style: TextStyle(fontSize: 20.0),),
                          SelectableText("(91) 983724926"),
                          SelectableText("(91) 991118618"),
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
                            image: AssetImage("Imagens/logo3ir.jpeg"))
                        )),
                          Expanded(child: Text(" 3 irmãos",style: TextStyle(fontSize: 19.0)))
                        ],),
                      ),
                    ),
            ),
        //FIM 3 IRMAO

        //DEUS
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
                            height: 250,
                            child: PhotoView(imageProvider: AssetImage("Imagens/cardapio/cardDeus.jpeg")),
                          ),
                          
                          Padding(padding: EdgeInsets.all(10.0)),
                          Text("Contato:", style: TextStyle(fontSize: 20.0),),
                          SelectableText("(91) 985621966"),
                          SelectableText("(91) 9811598300"),
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
                            image: AssetImage("Imagens/deus.jpeg"))
                        )),
                          Expanded(child: Text(" Glória Deus",style: TextStyle(fontSize: 19.0)))
                        ],),
                      ),
                    ),
            ),
        //FIM DEUS

        //LOJA QUIOSQUE MURITAAAAAA

        //FIM LOGO MURITAAAAAA

      ],),
      //++++++++++++++++++++++FIM LOJAS DE COMIDA+++++++++++++++++++\\
      
      /////////////LISTA COM OUTROS ESTABELECIMENTOS///////////////////
      ListView(children: <Widget>[

        //SIMEAO
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
                          Image.asset("Imagens/simeao.jpeg",fit: BoxFit.cover,height: 350.0,),
                          Text("Contato:", style: TextStyle(fontSize: 20.0),),
                          SelectableText("(91) 993492750"),
                          SelectableText("(91) 991840846"),
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
                            image: AssetImage("Imagens/simeao.jpeg"))
                        )),
                          Expanded(child: Text(" Simeão",style: TextStyle(fontSize: 19.0)))
                        ],),
                      ),
                    ),
            ),
        //FIM SEMAO

        //Peixe
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
                          Image.asset("Imagens/cardapio/cardPeixe.jpeg",fit: BoxFit.cover,height: 350.0,),
                          Text("Contato:", style: TextStyle(fontSize: 20.0),),
                          SelectableText("(91) 985204530"),
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
                            image: AssetImage("Imagens/logoPeix.jpeg"))
                        )),
                          Expanded(child: Text(" Forte do pescado",style: TextStyle(fontSize: 19.0)))
                        ],),
                      ),
                    ),
            ),
        //Fim Peixe

          //Loja IMPERIAL
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
                          Text("*Localizado na vila de jubim",style: TextStyle(color:Colors.orange),),
                          Text("- Material escolar,Recargas,GiftCards",style: TextStyle(fontSize: 15.0)),
                          Text("- Saque e deposito",style: TextStyle(fontSize: 15.0)),
                          Text("- Serviço de delivery aos sabados e domingos",style: TextStyle(fontSize: 15.0)),
                          Text("Contato:", style: TextStyle(fontSize: 20.0),),
                          SelectableText("(91) 993856168"),
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
                            image: AssetImage("Imagens/imperialLogo.jpeg"))
                        )),
                          Expanded(child: Text(" Imperial mix",style: TextStyle(fontSize: 19.0)))
                        ],),
                      ),
                    ),
            ),
        //FIM LOJA IMPERIAL


      ],)
      //+++++++++++++++++FIM OUTROS ESTABELECIMENTOS+++++++++++++++++++//
    ]; 

     

    //***************PARTE PRINCIPAL DO APP*******************\\
    return Scaffold(
      backgroundColor: Colors.white,
      /*
      appBar: AppBar(
        title: Text("Salvaterra", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.orange,
      ),
      */
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: false,
            snap: false,
            expandedHeight: 155.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Salvaterra",style: TextStyle(color: Colors.white),),
              background: Image.asset("Imagens/SalvaterraAppbar.jpg",fit: BoxFit.fill,),
              centerTitle: true,
            ),
          ),  
         
        SliverFillRemaining(
          
          child:  _pages[selectPage],
           
             
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