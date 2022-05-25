

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_prac2_mobile/BankCloneHomePage.dart';
import 'package:my_prac2_mobile/CardExample.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BankCloneEnterePin extends StatefulWidget {


  @override
  State<BankCloneEnterePin> createState() => _BankCloneEnterePinState();
}

class _BankCloneEnterePinState extends State<BankCloneEnterePin> {

  TextEditingController _enterpin = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text("Entere Pin",style: TextStyle(fontSize: 20.0),),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text("Entere Pin",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
            TextField(
              controller: _enterpin,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20,),
            Center(
              child: ElevatedButton(
                onPressed: ()async{

                  var enterpin = _enterpin.text.toString();

                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  var pin = prefs.getString("_pin");

                  if(enterpin=="")
                    {
                      Fluttertoast.showToast(
                          msg: "Please Enter Valid Pin ",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                  else if(pin==enterpin)
                    {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>BankCloneHomePage()));
                    }
                  else
                    {

                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      if(prefs.containsKey("count"))
                        {
                            var c = prefs.getInt("count");
                            if(c>=3)
                              {
                                Navigator.of(context).pop();
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context)=>CardExample()));
                              }
                            else
                              {
                                c++;
                                prefs.setInt("count", c);
                              }
                        }
                      else
                        {
                          prefs.setInt("count", 1);
                        }

                      Fluttertoast.showToast(
                          msg: "Pin not match",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                },
                child: Text('Submit',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
