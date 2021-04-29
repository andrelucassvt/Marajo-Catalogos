import 'dart:async';
import 'dart:convert';
import 'package:admob_flutter/admob_flutter.dart';
import 'package:catalogomarajoara/Views/PageFood/DetalhePage/detalhesPage.dart';
import 'package:catalogomarajoara/Views/PageFood/Widgets/buildFood.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';

class PageNew extends StatefulWidget {
  String nome;
  PageNew({this.nome});
  @override
  _PageNewState createState() => _PageNewState();
}

class _PageNewState extends State<PageNew> {
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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Column(
          children: <Widget>[

            Text(
              widget.nome,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    inherit: false)
            ),

            SizedBox(height: 40.0),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  )
                ),
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
                        }
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: documentos.length,
                            itemBuilder: (context, index) {
                              return BuildFood(
                                data: documentos[index].data(),
                              );
                            },
                          ),
                        );
                        
                    }
                  }
                ),
              ),
            )
          ],
        )
        );
  }
}