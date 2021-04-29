import 'dart:async';
import 'dart:convert';
import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:catalogomarajoara/Views/PageFood/Widgets/verCardapio.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final heroTag;
  final nomeRestaurante;
  final contato;
  List<String> cardapios;
  DetailsPage(
      {this.heroTag, this.nomeRestaurante, this.contato, this.cardapios});
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

        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent),
                  Positioned(
                      top: 75.0,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25.0),
                                topRight: Radius.circular(25.0),
                              ),
                              color: Colors.white),
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width)
                  ),
                  Center(
                    child: Hero(
                        tag: widget.heroTag,
                        child: CircleAvatar(
                          maxRadius: 100,
                          minRadius: 80,
                          backgroundImage: NetworkImage(widget.heroTag),
                        )),
                  ),
                  Positioned(
                      top: 230.0,
                      left: 15.0,
                      right: 0.01,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Text(widget.nomeRestaurante,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Contato:',
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: ElevatedButton(
                                    child: Text(widget.contato,style: TextStyle(color: Colors.white),),
                                    onPressed: () => launch('tel://' + widget.contato)),
                              )
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
                              height: 150,
                              child: ListView.builder(
                                physics: ClampingScrollPhysics(),
                                itemCount: widget.cardapios.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (conntext, index) {
                                  return _pegarCardapio(widget.cardapios[index]);
                                },
                              ),
                            ),
                          ),

                          
                        ],
                      )
                    )
              ]),
            ],
          ),
        ));
  }

  Widget _pegarCardapio(String img) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
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
      ),
    );
  }
}
