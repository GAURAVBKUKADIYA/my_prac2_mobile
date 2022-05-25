import 'package:flutter/material.dart';
import 'package:my_prac2_mobile/SqLiteProduct.dart';

import 'SqLiteStudent.dart';
import 'SqLiteViewEmployed.dart';
import 'SqLiteViewProduct.dart';
import 'SqliteEmployed.dart';
import 'SqliteViewStudent.dart';

class SQLiteEmployed extends StatefulWidget {


  @override
  State<SQLiteEmployed> createState() => _SQLiteEmployedState();
}

class _SQLiteEmployedState extends State<SQLiteEmployed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("SQLite"),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Text("G"),
              ),
              accountName: Text("Welcome,Product Sheet"),
              accountEmail: Text("Welcome Employed Sheet"),
            ),
            Divider(height: 5,),
            ListTile(
             title: Text("AddProduct"),
             trailing: Icon(Icons.arrow_right_alt),

              onTap: (){
               Navigator.of(context).push(
                 MaterialPageRoute(builder: (context)=>SqLiteProduct())
               );
              },
            ),
            Divider(height: 5,),
            ListTile(

              title: Text("ViewProduct"),
              trailing: Icon(Icons.arrow_right_alt),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>SqLiteViewProduct())
                );
              },
            ),
            Divider(height: 5,),
            ListTile(
              title: Text("AddEmployed"),
              trailing: Icon(Icons.arrow_right_alt),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>SqliteEmployed())
                );
              },

            ),
            Divider(height: 5,),
            ListTile(
              title: Text("ViewEmployed"),
              trailing: Icon(Icons.arrow_right_alt),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>SqLiteViewEmployed())
                );
              },
            ),
            Divider(height: 5,),
            ListTile(
              title: Text("Student Result"),
              trailing: Icon(Icons.arrow_right_alt),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>SqLiteStudent())
                );
              },
            ),
            Divider(height: 5,),
            ListTile(
              title: Text("View Student"),
              trailing: Icon(Icons.arrow_right_alt),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>SqliteViewStudent())
                );
              },
            ),
            Divider(height: 15,),


            Divider(height: 5,),
            ListTile(
              title: Text("Logout"),
              trailing: Icon(Icons.arrow_right_alt),
            ),
          ],
        ),
      ),

    );
  }
}
