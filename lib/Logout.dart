import 'package:flutter/material.dart';
import 'package:my_prac2_mobile/FacebooKLoginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Logout extends StatefulWidget {

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Logout",style: TextStyle(fontSize: 20.0),),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async{
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.clear();


                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>FacebooKLoginPage())
                );
              },

              child: Text("Logout",style: TextStyle(fontSize: 20.0),),
            ),
          ],
        ),
      ),
    );
  }
}
