import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_prac2_mobile/HomePageSharedPrefrence.dart';
import 'package:my_prac2_mobile/LoginRegistrationDemo.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Logout.dart';

class RegistrationSharedPrference extends StatefulWidget {


  @override
  State<RegistrationSharedPrference> createState() => _RegistrationSharedPrferenceState();
}

class _RegistrationSharedPrferenceState extends State<RegistrationSharedPrference> {

  TextEditingController _name = TextEditingController();
  TextEditingController _contact = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Center(
          child: Text("Welcome RegistrationPage"),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Enter Your Full Name",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              TextField(
                controller: _name ,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Full Name',
                ),

                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 10.0,),
              Text("Enter Your Contact Number",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              TextField(
                controller:_contact,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: ' Contact Number',
                ),

                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10.0,),
              Text("Enter Your Email Id",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              TextField(
                controller: _email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: ' Email Id',
                ),
                keyboardType: TextInputType.emailAddress,
              ),

              SizedBox(height: 10.0,),

              Text("Enter Your Password",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

              SizedBox(height: 5,),
              TextField(
                controller: _password,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: ' Enter YourPassword',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 10,),
              Center(
                child: ElevatedButton(
                  onPressed: ()async{

                    var name = _name.text.toString();
                    var contact = _contact.text.toString();
                    var email = _email.text.toString();
                    var password = _password.text.toString();

                    if(name=="")
                      {
                        Fluttertoast.showToast(
                            msg: "Please enter name  ",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                      }
                    else if(contact=="")
                    {
                      Fluttertoast.showToast(
                          msg: "Please enter conactnumber  ",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.yellow,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                    else if(email=="")
                    {
                      Fluttertoast.showToast(
                          msg: "Please enter email addres  ",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                    else if(password=="")
                    {
                      Fluttertoast.showToast(
                          msg: "Please enter password  ",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                    else{
                      SharedPreferences prefs = await SharedPreferences.getInstance();

                      prefs.setString("_name", name);
                      prefs.setString("_contact", contact);
                      prefs.setString("_email", email);
                      prefs.setString("_password", password);


                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>LoginRegistrationDemo())
                      );

                    }
                  },
                  child: Text("Create Account"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
