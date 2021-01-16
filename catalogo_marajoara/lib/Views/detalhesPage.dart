import 'dart:async';
import 'dart:convert';
import 'package:admob_flutter/admob_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:catalogomarajoara/Views/verCardapio.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final heroTag;
  final nomeRestaurante;
  final contato;
  List<String> cardapios;
  DetailsPage(
      {this.heroTag, this.nomeRestaurante, this.contato,this.cardapios});
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text('Detalhes',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 18.0,
                  color: Colors.white)),
          centerTitle: true,
        ),
        body: ListView(children: [
          Stack(children: [
            Container(
                height: MediaQuery.of(context).size.height - 82.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent),
            Positioned(
                top: 75.0,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45.0),
                          topRight: Radius.circular(45.0),
                        ),
                        color: Colors.white),
                    height: MediaQuery.of(context).size.height - 100.0,
                    width: MediaQuery.of(context).size.width)),
            Positioned(
                top: 30.0,
                left: (MediaQuery.of(context).size.width / 2) - 100.0,
                child: Hero(
                    tag: widget.heroTag,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            image: DecorationImage(
                                image: NetworkImage(widget.heroTag),
                                fit: BoxFit.cover)),
                        height: 200.0,
                        width: 200.0))),
            Positioned(
                top: 250.0,
                left: 25.0,
                right: 25.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          width: 110,
                          child: Text(widget.nomeRestaurante,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                        GestureDetector(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      color: Colors.black, width: 5.0)),
                              child: Center(
                                  child: Text(
                                widget.contato,
                                style: TextStyle(fontSize: 15),
                              )),
                            ),
                          ),
                          onTap: () => launch('tel://' + widget.contato),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Cardápios:',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 100,
                        child: ListView.builder(
                          itemCount: widget.cardapios.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (conntext, index){
                            return _pegarCardapio(widget.cardapios[index]);
                          },
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: AdmobBanner(
                          adUnitId: 'ca-app-pub-3652623512305285/9885248908',
                          adSize: AdmobBannerSize.BANNER,
                        ),
                      ),
                    )
                  ],
                ))
          ])
        ]));
  }

  Widget _pegarCardapio(String img) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Hero(
          tag: img.toString(),
          child: Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(img))),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => VerCardapio(
                          hero: img,
                        )));
              },
            ),
          )),
    );
  }
}
