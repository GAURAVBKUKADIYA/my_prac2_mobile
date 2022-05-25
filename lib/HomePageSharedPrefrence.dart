import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'LoginRegistrationDemo.dart';

class HomePageSharedPrefrence extends StatefulWidget {


  @override
  State<HomePageSharedPrefrence> createState() => _HomePageSharedPrefrenceState();
}

class _HomePageSharedPrefrenceState extends State<HomePageSharedPrefrence> {


  var name="",contact="",email="",password="";

  getdata() async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString("_name").toString();
      contact = prefs.getString("_contact").toString();
      email = prefs.getString("_email").toString();
      password = prefs.getString("_password").toString();

    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text("Welcom to Facebook"),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name:"+name,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

            SizedBox(height: 10.0,),

            Text("Contact:"+contact,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

            SizedBox(height: 10.0,),

            Text("Email:"+email,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0,),

            Text("Password:"+password,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

            SizedBox(height: 20.0,),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                onPressed: ()async{
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  prefs.remove("islogin");

                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginRegistrationDemo())
                  );
                },
                child: Text("Remove",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
              ),
            ),
          ],
          ),
      ),
    );
  }
}
