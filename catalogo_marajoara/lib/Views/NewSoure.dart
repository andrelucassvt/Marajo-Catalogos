import 'dart:async';
import 'dart:convert';

import 'package:catalogomarajoara/Api/Api.dart';
import 'package:catalogomarajoara/Api/Cardapios.dart';
import 'package:catalogomarajoara/Api/Estabelecimentos.dart';
import 'package:catalogomarajoara/Views/detalhesPage.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';

class SoureNew extends StatefulWidget {
  @override
  _SoureNewState createState() => _SoureNewState();
}

class _SoureNewState extends State<SoureNew> {
  var estabelecimentos = List<Estabelecimentos>();
  var cardapios = List<Cardapios>();
  final _streamController = StreamController<List>();

  _getEstabelecimentos() {
    APISalvaterra.getEstabelecimentosSoure().then((response) {
      setState(() {
        Iterable lista = json.decode(response.body);
        estabelecimentos =
            lista.map((e) => Estabelecimentos.fromJson(e)).toList();
        _streamController.add(lista);
      });
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getEstabelecimentos();
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
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purpleAccent,
        body: StreamBuilder(
            stream: _streamController.stream,
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                case ConnectionState.waiting:
                  return Center(
                      child: CircularProgressIndicator(
                    backgroundColor: Colors.red,
                  ));

                default:
                  return ListView(
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
                            Hero(
                                tag: 'Soure',
                                child: Text('Soure',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35.0,
                                        inherit: false))),
                          ],
                        ),
                      ),
                      SizedBox(height: 40.0),
                      Container(
                        height: MediaQuery.of(context).size.height - 185.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(75.0)),
                        ),
                        child: ListView(
                          primary: false,
                          padding: EdgeInsets.only(left: 25.0, right: 20.0),
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(top: 45.0),
                                child: Container(
                                    height: MediaQuery.of(context).size.height -
                                        300.0,
                                    child: ListView.builder(
                                      itemCount: estabelecimentos.length,
                                      itemBuilder: (context, index) {
                                        return _buildFoodItem(
                                          estabelecimentos[index].logoPath,
                                          estabelecimentos[index].nome,
                                          estabelecimentos[index].contato,
                                          estabelecimentos[index].id,
                                        );
                                      },
                                    ))),
                          ],
                        ),
                      )
                    ],
                  );
              }
            }));
  }

  Widget _buildFoodItem(
      String imgPath, String restauranteNome, String contato, String id) {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsPage(
                        heroTag: imgPath,
                        nomeRestaurante: restauranteNome,
                        contato: contato,
                        restauranteID: id,
                      )));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(children: [
                  Hero(
                      tag: imgPath,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            image:
                                DecorationImage(image: NetworkImage(imgPath))),
                      )),
                  SizedBox(width: 10.0),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(restauranteNome,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold)),
                      ])
                ])),
              ],
            )));
  }
}
