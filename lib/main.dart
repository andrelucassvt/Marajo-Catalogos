import 'package:flutter/material.dart';
import 'package:marajocatalogo/telas/loading.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:marajocatalogo/telas/saibaMais.dart';
import 'package:marajocatalogo/telas/salvaterra.dart';
import 'package:marajocatalogo/telas/soure.dart';


void main() {
  runApp(MaterialApp(
    home: carregamento(),
    
  ));
}


class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: <String>['lojas', 'mercados'],
    contentUrl: 'https://flutter.io',
    childDirected: false,
    testDevices: <String>[],
  );
  BannerAd myBanner;
  InterstitialAd myInterstitial;

  void startBanner() {
    myBanner = BannerAd(
      adUnitId: BannerAd.testAdUnitId,
      size: AdSize.smartBanner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        if (event == MobileAdEvent.opened) {
          // MobileAdEvent.opened
          // MobileAdEvent.clicked
          // MobileAdEvent.closed
          // MobileAdEvent.failedToLoad
          // MobileAdEvent.impression
          // MobileAdEvent.leftApplication
        }
        print("BannerAd event is $event");
      },
    );
  }
  void displayBanner() {
    myBanner
      ..load()
      ..show(
        anchorOffset: 0.0,
        anchorType: AnchorType.bottom,
      );
  }
  @override
  void dispose() {
    myBanner?.dispose();
    myInterstitial?.dispose();
    super.dispose();
  }
  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance
        .initialize(appId: "ca-app-pub-3652623512305285/3005334180");

    startBanner();
    displayBanner();
  }






  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: 50),
    
    child:Scaffold(
        
      body:Stack(children: <Widget>[
        
        Image.asset("Imagens/TesouroMarajoara4.JPG",fit: BoxFit.cover,height: 1000,),
        
        Column(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[

          Align(alignment: Alignment.bottomLeft,
          child: Text("   Olá, bem-vindo(a) ao ",style: TextStyle(color: Colors.white,fontSize: 15.0),),
          ),
          Padding(padding: EdgeInsets.all(5.0)),
          Align(alignment: Alignment.bottomLeft,
          child:  Text("  Catálogo",
          style: TextStyle(color: Colors.white,fontSize: 25.0),)
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
              FlatButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> saibaMais()));

              }, child: Text("Saiba mais   ",style: TextStyle(color: Colors.yellow),))
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
                      Text("Salvaterra",style: TextStyle(color: Colors.white,fontSize: 18.0),)),)
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
                  splashColor: Colors.orange,
                  onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> soureHome()));
                  },
                  child: Row(children: <Widget>[
                    Expanded(child: Center(
                      child:  
                      Text("Soure",style: TextStyle(color: Colors.white,fontSize: 18.0),)),)
                  ],)
                ),
              ),
            )
          ),


        ],)
        
        
      ],),
      
     
      
      ),
    );
  }
}
