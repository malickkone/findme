// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Box extends StatelessWidget {

  final icon;
  final text1;
  final text2;
  const Box({super.key, required this.icon, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
                // ignore: sort_child_properties_last
                child: Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
                  child: Column(
                    children: [
                      Image.asset(icon),
                      Text(text1, style: const TextStyle(fontWeight: FontWeight.bold),),
                      Text(text2, style: const TextStyle(fontWeight: FontWeight.bold))
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
              );
  }
}