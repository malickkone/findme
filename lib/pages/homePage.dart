// ignore_for_file: file_names, avoid_print
import 'package:find_me/database/sqlflitedb.dart';
import 'package:find_me/utils/avatar.dart';
import 'package:find_me/utils/inputField.dart';
import 'package:find_me/utils/text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
  
}




class _HomePageState extends State<HomePage> {

  SqlDb sql = SqlDb();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sql.insertData("INSERT INTO 'users'('login','pwd') VALUES ('diouf','diouf123')");
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    SizedBox(height: 10,),
                    Avatar(),
                    SizedBox(height: 35,),
                    MyText(),
                    SizedBox(height: 55,),
                    InputFiled()
                  ],
                ),
              ),
            ),
          ),
        ))
      );
  }
}