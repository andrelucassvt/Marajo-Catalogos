import 'package:catalogomarajoara/Views/detalhesPage.dart';
import 'package:flutter/material.dart';

class BuildFood extends StatefulWidget {
  final Map<String, dynamic> data;
  BuildFood({this.data});
  @override
  _BuildFoodState createState() => _BuildFoodState();
}

class _BuildFoodState extends State<BuildFood> {
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailsPage(
                            heroTag: widget.data['perfil'],
                            nomeRestaurante: widget.data['nome'],
                            contato: widget.data['telefone'],
                          )));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        child: Row(children: [
                      Hero(
                          tag: widget.data['perfil'],
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                                image:
                                    DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        widget.data['perfil'],))),
                          )),
                      SizedBox(width: 10.0),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 150,
                              child: Text(widget.data['nome'],
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ])
                    ])),
                  ],
                )));
  }
}