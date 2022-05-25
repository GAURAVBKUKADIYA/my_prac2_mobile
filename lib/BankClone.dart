import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_prac2_mobile/BankCloneEnterePin.dart';
import 'package:my_prac2_mobile/RegistrationSharedPrference.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'BankCloneHomePage.dart';
import 'CardExample.dart';

class BankClone extends StatefulWidget {


  @override
  State<BankClone> createState() => _BankCloneState();
}

class _BankCloneState extends State<BankClone> {

  TextEditingController _pin = TextEditingController();
  TextEditingController _confirmpin = TextEditingController();


  checkpin() async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey("_pin"))
    {
      if(prefs.containsKey("count"))
        {
          if(prefs.getInt("count")>=3)
          {
            Navigator.of(context).pop();
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>CardExample()));
          }
          else
          {
            Navigator.of(context).pop();
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>BankCloneEnterePin()));
          }
        }
      else
        {
          Navigator.of(context).pop();
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=>BankCloneEnterePin()));
        }

    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkpin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Create Pin"),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Pin",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
            TextField(
              controller: _pin,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 15.0,),
            Text("Confirm Pin",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
            TextField(
              controller: _confirmpin,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0)
                )
              ),
              
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 15.0,),
            Center(
              child: ElevatedButton(
                onPressed: ()async{
                 var pin = _pin.text.toString();
                 var confirmpin = _confirmpin.text.toString();

                 if(pin=="" ) {
                   Fluttertoast.showToast(
                       msg: "Please Create Your Valid Pin ",
                       toastLength: Toast.LENGTH_SHORT,
                       gravity: ToastGravity.BOTTOM,
                       timeInSecForIosWeb: 1,
                       backgroundColor: Colors.red,
                       textColor: Colors.white,
                       fontSize: 16.0
                   );
                 }
                 else if (confirmpin=="")
                   {
                     Fluttertoast.showToast(
                         msg: "Please Create Your Confirm Pin ",
                         toastLength: Toast.LENGTH_SHORT,
                         gravity: ToastGravity.BOTTOM,
                         timeInSecForIosWeb: 1,
                         backgroundColor: Colors.red,
                         textColor: Colors.white,
                         fontSize: 16.0
                     );
                   }
                 else if(pin==confirmpin)
                   {
                     SharedPreferences prefs = await SharedPreferences.getInstance();
                     prefs.setString("_pin", pin);

                     Navigator.of(context).pop();
                     Navigator.of(context).push(
                         MaterialPageRoute(builder: (context)=>BankCloneHomePage()));
                   }
                 else{
                   Fluttertoast.showToast(
                       msg: "Both pin must match",
                       toastLength: Toast.LENGTH_SHORT,
                       gravity: ToastGravity.BOTTOM,
                       timeInSecForIosWeb: 1,
                       backgroundColor: Colors.red,
                       textColor: Colors.white,
                       fontSize: 16.0
                   );
                 }

                },

                child: Text("Submit",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
