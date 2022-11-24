// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CodeQRpage extends StatelessWidget {
  const CodeQRpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              height: 35,
              decoration: const BoxDecoration(
                color: Colors.grey
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const  [
                  Text('FindMe ' , style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                  Text('Activer le Flash' , style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                  Text(' Annuler' , style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold))
                ],
              ),
        
            ),
            const Spacer(),
            GestureDetector(onTap:(){Navigator.of(context).pushNamed('/scanne');} ,child: Center(child: Image.asset('assets/qrcodee.jpg', width: 150,))),
            const Spacer()
          ],
        ),
      ),
    );
  }
}