// ignore_for_file: avoid_print, prefer_is_empty
import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

class SqlDb {

  static Database? _db;

  Future<Database?> get db async{
    if(_db == null){
      _db = await initialDb();
      return _db;
    }
    else{
      return _db;
    }
  }

  initialDb() async {
    String databasepath = await getDatabasesPath();
    String path = join(databasepath, 'findmedb');
    Database mydb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return mydb;
  }

// ceation de la base et d'une table
  _onCreate(Database db, int version) async {
    await db.execute('''
       CREATE TABLE "users"(
        "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
        "login" TEXT NOT NULL,
        "pwd" TEXT NOT NULL
       )
''');
  print('create table and database');
  }

// fonction pour inserer des données dans la bases
  insertData(String sql) async{
    Database? mydb = await db;
    int response = await mydb!.rawInsert(sql);
    return response;
  }

//Lecture de la base
  readData(String sql) async{
    Database? mydb = await db;
    List<Map> response = await mydb!.rawQuery(sql);
    return response;
  }

  Future<bool> loginUser(String login, String pwd) async {
    bool val;
    Database? mydb = await db;
    List<Map> res = await mydb!.rawQuery("SELECT * FROM 'users' WHERE login ='$login' AND pwd ='$pwd'");
    

     if(res.length > 0){
       val = true;
     }else{
       val = false;
     }
    
     return val;
  }
}
