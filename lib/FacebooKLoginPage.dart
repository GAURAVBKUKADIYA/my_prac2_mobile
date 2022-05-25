import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Logout.dart';


class FacebooKLoginPage extends StatefulWidget {


  @override
  State<FacebooKLoginPage> createState() => _FacebooKLoginPageState();
}

class _FacebooKLoginPageState extends State<FacebooKLoginPage> {

  TextEditingController _mobile = TextEditingController();
  TextEditingController _password = TextEditingController();

  checklogin() async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey("islogin"))
      {
        Navigator.of(context).pop();
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=>Logout())
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
          child: Text("FacebooKLoginPage"),
        ),
      ),
      body: Container(
        color: Colors.white38,
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: _mobile,

              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Phone number',
              ),
              keyboardType: TextInputType.number,
            ),


            SizedBox(height: 15,),


            TextField(
              controller: _password,

              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password',
              ),
              keyboardType: TextInputType.number,
            ),

            SizedBox(height: 15.0,),
            ElevatedButton(

              style: ButtonStyle(

                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
                onPressed: () async {
                  var mobile = _mobile.text.toString();
                  var password = _password.text.toString();

                  if(mobile=="" && password=="")
                  {
                    Fluttertoast.showToast(
                        msg: "Please enter mobile number and password ",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0

                    );
                  }
                  else if(mobile=="123" && password=="456")
                  {
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    prefs.setString("islogin", "yes");


                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=>Logout())
                    );
                  }
                  else
                  {
                    Fluttertoast.showToast(
                        msg: "Your Number Password Incorrect",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );

                  }
                },
                //
                //
              child:Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
