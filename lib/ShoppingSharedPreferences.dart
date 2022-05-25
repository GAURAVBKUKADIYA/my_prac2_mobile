import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'ShoppingLoginPage.dart';



class ShoppingSharedPreferences extends StatefulWidget {


  @override
  State<ShoppingSharedPreferences> createState() => _ShoppingSharedPreferencesState();
}

class _ShoppingSharedPreferencesState extends State<ShoppingSharedPreferences> {

  var islogin="no";

  checklogin() async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey("_id"))
      {
        setState(() {
          islogin="yes";
        });
      }
    else
      {
        setState(() {
          islogin="no";
        });
      }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checklogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(
          child: Text("HomePage"),
        ),
      ),
      body:Text(""),
      drawer: Drawer(
        child: ListView(
          children: [
            (islogin=="no")?ListTile(
              title: Text("Login"),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>ShoppingLoginPage())
                );
              },
            ):SizedBox(height: 0),
            Divider(),
            (islogin=="no")?ListTile(
              title: Text("Registration"),
              onTap: (){
              },
            ):SizedBox(height: 0),
            Divider(),
            ListTile(
              title: Text("About"),
              onTap: (){
              },
            ),
            Divider(),
            ListTile(
              title: Text("Contact"),
              onTap: (){
              },
            ),
            Divider(),
            (islogin=="yes")?ListTile(
              title: Text("Myorders"),
              onTap: (){
              },
            ):SizedBox(height: 0),
            Divider(),
            (islogin=="yes")?ListTile(
              title: Text("Logout"),
              onTap: () async{
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.clear();
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>ShoppingSharedPreferences())
                );

              },
            ):SizedBox(height: 0),
          ],
        ),
      ),
    );
  }
}
