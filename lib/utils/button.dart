// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:find_me/database/sqlflitedb.dart';
import 'package:flutter/material.dart';


class UsefulButton extends StatelessWidget {

  final btnText;

  const UsefulButton({super.key, required this.btnText});

  @override
  Widget build(BuildContext context) {
    SqlDb sql = SqlDb();
    return  ElevatedButton(
          onPressed: () async{
             await sql.insertData("INSERT INTO 'users' ('login','pwd') values ('papa','papa1805')");
             List<Map> response = await sql.readData("select * from 'users'");
             print("$response");
            // Navigator.of(context).pushNamed('/userPage');
          },
          // ignore: sort_child_properties_last
          child:  SizedBox(
            width: 100,
            child: Text(
              btnText.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              primary: Colors.green,
              onPrimary: Colors.white),
        );
  }
}