import 'package:flutter/material.dart';

import 'BankCloneEnterePin.dart';

class BankCloneHomePage extends StatefulWidget {


  @override
  State<BankCloneHomePage> createState() => _BankCloneHomePageState();
}

class _BankCloneHomePageState extends State<BankCloneHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("HomePage",style: TextStyle(fontSize: 15.0),),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(20),
        child: IconButton(
          iconSize: 150,
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder:(context)=>  BankCloneEnterePin ())
            );

          },

          icon: Icon(Icons.power_settings_new),
        ),
      ),
    );
  }
}
