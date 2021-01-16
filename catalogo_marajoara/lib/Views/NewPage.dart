import 'dart:async';
import 'dart:convert';
import 'package:catalogomarajoara/Views/Componetes/buildFood.dart';
import 'package:catalogomarajoara/Views/detalhesPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';

class SalvaterraNew extends StatefulWidget {
  String nome;
  SalvaterraNew({this.nome});
  @override
  _SalvaterraNewState createState() => _SalvaterraNewState();
}

class _SalvaterraNewState extends State<SalvaterraNew> {
  InterstitialAd myInterstitial = InterstitialAd(
    adUnitId: 'ca-app-pub-3652623512305285/5656754507',
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("InterstitialAd event is $event");
    },
  );

  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: <String>['flutterio', 'beautiful apps'],
    contentUrl: 'https://flutter.io',
    childDirected: false,
    testDevices: <String>[], // Android emulators are considered test devices
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseAdMob.instance
        .initialize(appId: "ca-app-pub-3652623512305285~5040470589");
    myInterstitial
      ..load()
      ..show(
        anchorType: AnchorType.bottom,
        anchorOffset: 0.0,
        horizontalCenterOffset: 0.0,
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 15.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.0),
            Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Row(
                children: <Widget>[
                  Text(widget.nome,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          inherit: false)),
                ],
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              height: MediaQuery.of(context).size.height - 185.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
              ),
              child: ListView(
                primary: false,
                padding: EdgeInsets.only(left: 25.0, right: 20.0),
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(top: 45.0),
                      child: Container(
                          height: MediaQuery.of(context).size.height - 300.0,
                          child: StreamBuilder<QuerySnapshot>(
                            stream: FirebaseFirestore.instance.collection(widget.nome).snapshots(),
                            builder: (context, snapshot) {
                              switch (snapshot.connectionState) {
                                case ConnectionState.none:
                                case ConnectionState.waiting:
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                default:
                                  List<DocumentSnapshot> documentos = snapshot.data.docs.reversed.toList();
                                  if (snapshot.hasError) {
                                    return Center(
                                      child: Text(
                                        'Estamos com problemas no servidor :(',
                                        style: TextStyle(fontSize: 20),
                                        ),
                                    );
                                  }else if(documentos.isEmpty){
                                    return Center(
                                      child: Text('Sem dados :?',
                                      style: TextStyle(fontSize: 20),
                                      ),
                                    );
                                  }else{
                                    return ListView.builder(
                                      itemCount: documentos.length,
                                      itemBuilder: (context, index) {
                                        return BuildFood(
                                          data: documentos[index].data(),
                                        );
                                      },
                                    );
                                  }
                              }
                            }
                          ))),
                ],
              ),
            )
          ],
        )

        //Não APAGAR//////////////////////////////////////

        );
  }
}
//
//
