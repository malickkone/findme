import 'package:find_me/pages/codeQRpage.dart';
import 'package:find_me/pages/scannerPage.dart';
import 'package:find_me/pages/userPage.dart';
import 'package:flutter/material.dart';

import 'pages/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const ScannerPage()
    );
  }
}

