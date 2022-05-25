import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHandler
{


  Database db;

  Future<Database> create_db() async
  {
      if(db==null)
        {
          //database not exist!
          Directory dir = await getApplicationDocumentsDirectory();
          String path = join(dir.path,"shop_db");
          var db = await openDatabase(path,version: 1,onCreate: create_table);
          return db;
        }
      else
        {
          return db;
        }
  }
  create_table(Database db,int version) async
  {
    db.execute("create table products (pid integer primary key autoincrement,product_name text,qty integer,rprice double,sprice double)");
    db.execute("create table employed (pid integer primary key autoincrement,employed_name text,sallary double, email text, gender text,dept text)");
    db.execute("create table student (sid integer primary key autoincrement,studentname text, rollno integer,mathes double, social double,scince double)");

    //db.execute("");
    print("Table Created");
  }
  Future<int> addproduct(name,qty,rprice,sprice) async
  {
      var db = await create_db();
      var id = await db.rawInsert("insert into products (product_name,qty,rprice,sprice) values (?,?,?,?)",[name,qty,rprice,sprice]);
      return id;
  }

  Future<List> getAllProducts() async
  {
    var db = await create_db();
    var data = await db.rawQuery("select * from products");
    return data.toList();
  }
  Future<int> deleteProduct(pid) async
  {
    var db = await create_db();
    var status = await db.rawDelete("delete from products where pid=?",[pid]);
    return status;
  }
  //updateproduct
  Future<int>  saveproduct(name,qty,rprice,sprice,updateid) async
  {
    var db = await create_db();

    //insert olddata

    int status  = await db.rawUpdate("update products set product_name=?,qty=?,rprice=?,sprice=? where pid=?",[name,qty,rprice,sprice,updateid]);
    return status;
  }
  Future<List> getSingleProduct(updateid) async
  {
    var db = await create_db();
    var data = await db.rawQuery("select * from products where pid=?",[updateid]);
    return data.toList();
  }
  //employed
  Future<int> addemployed (name,sallary,email,gender,select) async
  {
    var db = await create_db();
    var id = await db.rawInsert("insert into employed (employed_name,sallary,email,gender,dept) values(?,?,?,?,?)",[name,sallary,email,gender,select]);
    return id;
  }
  Future<List> getAllEmployed() async
  {
    var db = await create_db();
    var data = await db.rawQuery("select * from employed");
    return data.toList();
  }
  Future <int> deleteemployed(pid)async{
    var db = await create_db();
    var stutas = await db.rawDelete("delete from employed where pid=?",[pid]);
    return stutas;

  }
  Future<List> getSingleEmployed(updateid) async
  {
    var db = await create_db();
    var data = await db.rawQuery("select * from employed where pid=?",[updateid]);
    return data.toList();
  }
  Future<int> saveemployed(name,sallary,email,gender,select,updateid) async
  {
  var db = await create_db();
  int stutus = await db.rawUpdate("update employed set employed_name=?,sallary=?,email=?,gender=?,dept=? where pid=?",[name,sallary,email,gender,select,updateid]);
  return stutus;
  }

  //students
  Future<int> addstudent (name,rollno,mathes,social,scince) async
  {
    var db = await create_db();
    var id = await db.rawInsert("insert into student (studentname,rollno,mathes,social,scince) values(?,?,?,?,?)",[name,rollno,mathes,social,scince]);
    return id;
  }

  Future<List> getallstudens()async{
    var db = await create_db();
    var data = await db.rawQuery("select * from student");
    return data.toList();

  }
 Future<int> deletestudents(sid)async{
    var db = await create_db();
    var stutas = await db.rawDelete("delete from student where sid=?",[sid]);
    return stutas;
  }

 Future<List> getSinglestudents(updateid)async{
    var db = await create_db();
    var data = await db.rawQuery("select * from student where sid=?",[updateid]);
    return data.toList();
  }

  Future<int> savestudents(name,rollno,mathes,social,scince,updateid)async
  {
    var  db = await create_db();
    int status = await db.rawUpdate("update student set studentname=?,rollno=?,mathes=?,social=?,scince=? where sid=?",[name,rollno,mathes,social,scince,updateid]);
    return status;

  }



}