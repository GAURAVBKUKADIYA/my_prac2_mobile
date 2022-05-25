import 'package:flutter/material.dart';
import 'package:my_prac2_mobile/ButtonExample.dart';
import 'package:my_prac2_mobile/Chats.dart';
import 'package:my_prac2_mobile/LIstviewexample.dart';

class BottomNavigationExample extends StatefulWidget {

  @override
  State<BottomNavigationExample> createState() => _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<BottomNavigationExample> {

  var selected=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation"),
        backgroundColor: (selected==0)?Colors.red:(selected==1)?Colors.blue:Colors.purple,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.red.shade100,
        onTap: (index)
        {
          setState(() {
            selected=index;
          });
        },
        currentIndex: selected,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "About"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings"
          ),

        ],
      ),
      body: (selected==0)?Tabdemo1():(selected==1)?LIstviewexample():ButtonExample(),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       (selected==0)?Text("Home Tab"):Visibility(child: Text("Demo"),visible: false),
      //       (selected==1)?Text("About Tab"):Visibility(child: Text("Demo"),visible: false),
      //       (selected==2)?Text("Settings Tab"):Visibility(child: Text("Demo"),visible: false),
      //     ],
      //   ),
      // )
    );
  }
}
