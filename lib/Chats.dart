import 'package:flutter/material.dart';

class Tabdemo1 extends StatefulWidget {

  @override
  State<Tabdemo1> createState() => _Tabdemo1State();
}

class _Tabdemo1State extends State<Tabdemo1> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          // floatingActionButton: FloatingActionButton(
          //   child: Icon(Icons.message),
          //   onPressed: (){},
          // ),
          body: ListView(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 50.0,
               child: ClipOval(
                  child: Image.asset("img/appphoto19",height: 100,width: 100, fit: BoxFit.cover,),
                ),
                ),
                title: Text("Karon"),
                subtitle: Text("Hi..."),
                trailing: Text("01/03/2022"),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text("123"),
                ),
                title: Text("hk"),
                subtitle: Text("Hi..."),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text("gk"),
                ),
                title: Text("Karon"),
                subtitle: Text("Hi..."),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text("new"),
                ),
                title: Text("Karon"),
                subtitle: Text("Hi..."),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text("flutter"),
                ),
                title: Text("Karon"),
                subtitle: Text("Hi..."),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text("list"),
                ),
                title: Text("Karon"),
                subtitle: Text("Hi..."),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text("key"),
                ),
                title: Text("Karon"),
                subtitle: Text("Hi..."),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text("tile"),
                ),
                title: Text("Karon"),
                subtitle: Text("Hi..."),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text("A"),
                ),
                title: Text("Karon"),
                subtitle: Text("Hi..."),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text("A"),
                ),
                title: Text("Karon"),
                subtitle: Text("Hi..."),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Text("A"),
                ),
                title: Text("Karon"),
                subtitle: Text("Hi..."),
              ),
            ],
          ),

        );
  }
}
