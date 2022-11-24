// ignore_for_file: file_names

import 'package:find_me/utils/box.dart';
import 'package:find_me/utils/button.dart';
import 'package:flutter/material.dart';


class PlaquePage extends StatelessWidget {
  const PlaquePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                   Icon(Icons.menu, size: 35, color: Colors.blue,),
                   Text("")
                ],
              ),
              Image.asset('assets/findmelogo.png'),
              const SizedBox(height: 15,),
              Container(
                // ignore: sort_child_properties_last
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Row(
                        children: [
                          Image.asset('assets/house.png'),
                          const Text(' Adresse Plaque', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                        ],
                      ),
                      const SizedBox(height: 6,),
                      const Text("06 Rue Abdoulaye Seck Marie Parsine,", style: TextStyle(fontSize: 18),),
                      const SizedBox(height: 6,),
                      const Text("CP : 13000", style: TextStyle(fontSize: 18)),
                      const SizedBox(height: 6,),
                      const Text("Dakar, Senegal", style: TextStyle(fontSize: 18))
                      
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
              const SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                   Box(icon: 'assets/call.png', text1: 'contacter', text2: 'le client'),
                   Box(icon: 'assets/photo.png', text1: 'Preuve', text2: 'Photo'),
                ],
              ),
              const SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                   Box(icon: 'assets/location.png', text1: 'corriger', text2: 'position'),
                   Box(icon: 'assets/support.png', text1: 'Support', text2: 'FindMe'),
                ],
              ),
              const SizedBox(height: 25,),
              UsefulButton(btnText: 'Valider', function: (){},),
              const Spacer(),
              Image.asset('assets/slogan.png')
              
            ],
          ),
        ),
      ),
    );
  }
}