import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_prac2_mobile/Mxplayer.dart';

class Drawerdemo extends StatefulWidget {

  @override
  _DrawerdemoState createState() => _DrawerdemoState();
}

class _DrawerdemoState extends State<Drawerdemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer demo"),
        leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(
              Icons.remove_red_eye_sharp,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: Text("menu bar",style: TextStyle(fontSize: 20.0),),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: Text("G",style: TextStyle(fontSize: 25.0),),
                ),

                accountEmail: Text("gauravbkukadiya57@gmial.com"),
                accountName: Text("Gaurav"),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_right_alt),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>Mxplayer())
                  );
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.image),
                title: Text("menu"),
                trailing: Icon(Icons.add),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>Mxplayer())
                  );
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.image),
                title: Text("menu"),
                trailing: Icon(Icons.add),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>Mxplayer())
                  );
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.image),
                title: Text("menu"),
                trailing: Icon(Icons.add),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>Mxplayer())
                  );
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.image),
                title: Text("menu"),
                trailing: Icon(Icons.add),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>Mxplayer())
                  );
                },
              ),
            ],
          ),
        ),
    );
  }
}
