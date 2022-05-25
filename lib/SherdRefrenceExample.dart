import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SherdRefrenceExample extends StatefulWidget {


  @override
  State<SherdRefrenceExample> createState() => _SherdRefrenceExampleState();
}

class _SherdRefrenceExampleState extends State<SherdRefrenceExample> {

  TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Sherd Prefrence Example"),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextField(
                controller: _name,
                decoration: InputDecoration(
                  enabledBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0))
                  ), 
                ),
                keyboardType: TextInputType.text,
              ),

              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    side: BorderSide(color: Colors.teal
                    ),),),),
                onPressed: () async{
                  var nm = _name.text.toString();

                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  //store
                  prefs.setString("fullname", nm);

                  // prefs.setString("lastname", "abc");
                  // prefs.setInt("age", 25);

                  print("Value Stored In Phone Memory");

                  _name.text="";


                },
                child: Text("Store",style: TextStyle(fontSize: 20.0),),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: BorderSide(color: Colors.teal
                      ),),),),
                onPressed: () async{
                  SharedPreferences prefs = await SharedPreferences.getInstance();

                  //check
                  if(prefs.containsKey("fullname"))
                    {
                       //read
                       var n = prefs.getString("fullname");
                       print("Value is : "+n);
                    }
                  else
                    {
                      print("No Value Available");
                    }


                },
                child: Text("Read",style: TextStyle(fontSize: 20.0),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
