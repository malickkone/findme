// ignore_for_file: file_names

import 'package:clipboard/clipboard.dart';
import 'package:find_me/utils/box.dart';
import 'package:find_me/utils/button.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    var link = TextEditingController();
    function1(){
      return Navigator.of(context).pushNamed('/plaque');
    }
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
              Box(icon: 'assets/searchQR.png', text1: 'Scanner',text2: 'QR code', ontap: (){Navigator.of(context).pushNamed('/qr');},),
              const SizedBox(height: 15,),
              const Text("Entrez l'identifiant à l'aide de l'adresse en copian", style: TextStyle(fontWeight: FontWeight.bold)),
              const Text("le lien présent dans le QRcode sur la plaque", style:  TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 5,),
              TextField(
                style: const TextStyle(color: Colors.green),
                controller: link,
                onTap: () {
                  FlutterClipboard.paste().then((value) => {
                    setState(() {
                      link.text = value;
                     })
                  });
                },
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
              const SizedBox(height: 20,),
              UsefulButton(btnText: 'valider' , function: function1 ),
              const SizedBox(height: 48,),
              Image.asset('assets/slogan.png')
            ],
          ),
        ),
      ),
    );
  }
}