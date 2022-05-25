

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_prac2_mobile/HomePageSharedPrefrence.dart';
import 'package:my_prac2_mobile/RegistrationSharedPrference.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginRegistrationDemo extends StatefulWidget {

  @override
  State<LoginRegistrationDemo> createState() => _LoginRegistrationDemoState();
}

class _LoginRegistrationDemoState extends State<LoginRegistrationDemo> {

  TextEditingController _n1 = TextEditingController();
  TextEditingController _n2 = TextEditingController();

  checklogin() async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey("islogin"))
      {
        Navigator.of(context).pop();
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => HomePageSharedPrefrence())
        );
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
          child: Text("LoginRegistrationDemo"),
        ),
      ),

      body: Container(
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Add Your Number",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
            TextField(
              controller: _n1,
        decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Phone number',
        ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 15,),
            Text(" Password",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
            TextField(
              controller: _n2,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Id',
              ),

              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 10,),

          Center(
            child: ElevatedButton(
              onPressed: ()async{
                var contact = _n1.text.toString();
                var password = _n2.text.toString();

                var s_mobile;
                var s_password;

                SharedPreferences prefs = await SharedPreferences.getInstance();

                if(prefs.containsKey("_contact")&& prefs.containsKey("_password"))
                  {
                   // print("this value is store");
                    s_mobile = prefs.getString("_contact").toString();
                    s_password = prefs.getString("_password").toString();
                  }

                 if (contact == "" && password == "")
                  {
                    Fluttertoast.showToast(
                        msg: "Please enter Details  ",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  }
                else if (contact == s_mobile && password == s_password)
                  {
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    prefs.setString("islogin", "yes");

                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePageSharedPrefrence())
                    );
                  }else
                    {
                      Fluttertoast.showToast(
                          msg: "not found  ",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
              },
              child: Text("Login"),

            ),
          ),
            Center(
              child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>RegistrationSharedPrference())
                  );
                },
                child: Text("SIgnpu"),

              ),
            ),

          ],
        ),
      ),


    );
  }
}
