import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/enterrank.dart';
import 'pages/rankinfo.dart';
import 'pages/loading.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/ll',
    routes: {
      '/ll' : (context) => Loadingg(),
      '/' : (context) => Home(),
      '/enterrank' : (context) => EnterRank(),
      '/rankinfo' : (context) => RankInfo(),
    },
  ),
  );
}




