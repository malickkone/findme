import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CodeQRpage extends StatelessWidget {
  const CodeQRpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
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
            Center(child: Image.asset('assets/qrcodee.jpg', width: 150,)),
            const Spacer()
          ],
        ),
      ),
    );
  }
}