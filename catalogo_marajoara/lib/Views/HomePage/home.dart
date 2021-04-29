import 'dart:async';

import 'package:catalogomarajoara/Views/PageFood/NewPage.dart';
import 'package:connectivity/connectivity.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: <String>['flutterio', 'beautiful apps'],
    contentUrl: 'https://flutter.io',
    childDirected: false,
    testDevices: <String>[], // Android emulators are considered test devices
  );

  String connection = "";
  StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance
        .initialize(appId: "ca-app-pub-3652623512305285~5040470589");
    _connectivitySubscription = Connectivity().onConnectivityChanged.listen(_updateStatus);
  }

   void _updateStatus(ConnectivityResult connectivityResult) async{
      if (connectivityResult == ConnectivityResult.mobile) {

          connection = 'Conectado';

        } else if (connectivityResult == ConnectivityResult.wifi) {
          connection = 'Conectado';
        }else{
          connection = 'Desconectado';
        }
    }
//Navegar entre paginas
  _navegar({String nome,String status}){
    if (status == 'Conectado') {
      return Navigator.of(context).push(
        MaterialPageRoute(builder: (context)=> PageNew(nome: nome,)));
    } else {
          return Future.delayed(Duration.zero,(){
              showDialog(
                context: context,
                builder: (BuildContext context)=>CupertinoAlertDialog(
                  title: Text('Aviso'),
                  content: Text('Você está sem conexão'),
                  actions: [
                    CupertinoDialogAction(
                      isDefaultAction: true,
                      onPressed: (){
                        _connectivitySubscription = Connectivity().onConnectivityChanged.listen(_updateStatus);
                        Navigator.of(context).pop();
                      },
                      child: Text('Voltar')),
                  ],
                )
                );
          });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "Imagens/TesouroMarajoara4.JPG",
            fit: BoxFit.cover,
            height: 1000,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "   Olá, bem-vindo(a) ao ",
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "  Catálogo",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  )),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "  Marajoara.",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20,bottom: 10),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Escolha o catálogo: ",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent),
                  child: InkWell(
                      splashColor: Colors.blue,
                      onTap: () {
                        _navegar(nome: 'Salvaterra',status: connection);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                          child: Text(
                          "Salvaterra",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              inherit: false),
                          ),
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.purpleAccent),
                  child: InkWell(
                      splashColor: Colors.orange,
                      onTap: () {
                        _navegar(nome: 'Soure',status: connection);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                          child: Text(
                          "Soure",
                          style: TextStyle(
                            color: Colors.white, fontSize: 18.0),
                        )
                      ),
                      )
                    ),
                ),
              ),
              SizedBox(
                height: 70,
              )
            ],
          )
        ],
      ),
    );
  }
}
