// ignore_for_file: file_names

import 'package:find_me/utils/box.dart';
import 'package:find_me/utils/button.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

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
                children: [
                  const Icon(Icons.menu, size: 35, color: Colors.blue,),
                  Image.asset('assets/croixRouge.png' )
                ],
              ),
              Image.asset('assets/findmelogo.png'),
              const SizedBox(height: 30,),
              Image.asset('assets/profil.png'),
              const SizedBox(height: 30,),
              const Box(icon: 'assets/searchQR.png', text1: 'Scanner',text2: 'QR code',),
              const SizedBox(height: 15,),
              const Text("Entrez l'identifiant à l'aide de l'adresse en copian", style: TextStyle(fontWeight: FontWeight.bold)),
              const Text("le lien présent dans le QRcode sur la plaque", style:  TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 5,),
              TextField(
                style: const TextStyle(color: Colors.green),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: const BorderSide(color: Colors.green)
                  ),
                  focusedBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: const BorderSide(color: Colors.green)
                  ),
                  hintText: '     Exemple: info.house/sen/aid/adresse',
                ),
              ),
              const Spacer(),
              const UsefulButton(btnText: 'valider'),
              const Spacer(),
              Image.asset('assets/slogan.png')
            ],
          ),
        ),
      ),
    );
  }
}