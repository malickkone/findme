import 'package:find_me/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScannerPage extends StatelessWidget {
  const ScannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Image.asset('assets/logo2.png'),
              ),
              const SizedBox(height: 40,),
              Container(
                // ignore: sort_child_properties_last
                child: Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 50 , vertical: 60),
                  child: Column(
                    children: const [
                      
                      Text('https//info.house/sen/aid/adresse', style:TextStyle(color: Colors.green, fontSize:15 ),),
                      SizedBox(height: 10,),
                      Icon(Icons.copy, color: Colors.green,)
                     
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow:  const [
                    BoxShadow  (
                      offset: Offset(-1.5,5),
                      color:  Color.fromARGB(255, 219, 216, 216)
                    ),
                    BoxShadow  (
                      offset: Offset(1.5,-1.5),
                      color:  Color.fromARGB(255, 219, 216, 216)
                    )

                  ]
                ),
              ),
              const SizedBox(height: 40,),
              const UsefulButton(btnText: 'Retour')
            ],
          ),
        ),
      ),
    );
  }
}