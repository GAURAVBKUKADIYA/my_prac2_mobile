import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tabdemo3 extends StatefulWidget {


  @override
  State<Tabdemo3> createState() => _Tabdemo3State();
}

class _Tabdemo3State extends State<Tabdemo3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.blue,
              child: Text("img"),
            ),
            title: Text('frd'),
            subtitle: Text("hi"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.black,
              child: Text("Cool Down"),
            ),
            title: Text("fine",style: TextStyle(fontSize: 25.0)),
            trailing: Icon(Icons.call_end),

          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.red,
              child: Text("Mg"),
            ),
            title: Text("Morris Garages",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
            trailing: Icon(Icons.car_rental,size: 60,),
          ),
        ],
      ),
    );
  }
}
