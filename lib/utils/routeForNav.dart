// ignore_for_file: file_names

import 'package:find_me/pages/codeQRpage.dart';
import 'package:find_me/pages/homePage.dart';
import 'package:find_me/pages/plaquePage.dart';
import 'package:find_me/pages/scannerPage.dart';
import 'package:find_me/pages/userPage.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings){

    switch (settings.name){
      case '/' : return MaterialPageRoute(builder: (_)=> const HomePage());
      case '/userPage' : return MaterialPageRoute(builder: (_)=> const UserPage());
      case '/qr' : return MaterialPageRoute(builder: (_)=>const CodeQRpage());
      case '/scanne' : return MaterialPageRoute(builder: (_)=> const ScannerPage());
      case '/plaque' : return MaterialPageRoute(builder: (_)=> const PlaquePage());
      default: return errorRoute();
    }
  }

  static Route<dynamic> errorRoute(){
  return MaterialPageRoute(
    builder:(_)=> Scaffold(
      appBar: AppBar(title: const Text('error'),),
      body: const Center(child: Text('error route')),
    ),
  );
 } 
}