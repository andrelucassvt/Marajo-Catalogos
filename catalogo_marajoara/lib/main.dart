import 'dart:async';

import 'package:catalogomarajoara/Views/HomePage/home.dart';
import 'package:catalogomarajoara/Views/PageFood/NewPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:admob_flutter/admob_flutter.dart';
import 'package:connectivity/connectivity.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Admob.initialize();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));
}

