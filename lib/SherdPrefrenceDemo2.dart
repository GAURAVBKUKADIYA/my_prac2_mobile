import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SherdPrefrenceDemo2 extends StatefulWidget {


  @override
  State<SherdPrefrenceDemo2> createState() => _SherdPrefrenceDemo2State();
}

class _SherdPrefrenceDemo2State extends State<SherdPrefrenceDemo2> {


  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();

  int total =0;
  var str = "0";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Center(
          child: Text("SherdPrefrenceDemo2"),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: n1,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),

              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 15),
            TextField(
              controller: n2,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              ElevatedButton(
                onPressed: () async {
                  setState(() {
                    total = int.parse(n1.text)+int.parse(n2.text);
                    str=total.toString();
                  });
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  prefs.setString("result", str.toString());

                  print("Value Stored in memory");

                  n1.text="";
                  n2.text="";
                },
                child: Text("+"),
              ),
                ElevatedButton(
                  onPressed: ()async{
                    setState(() {
                      total = int.parse(n1.text)-int.parse(n2.text);
                      str=total.toString();
                    });
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    prefs.setString("result", str.toString());

                    n1.text="";
                    n2.text="";
                  },

                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: () async{
                   setState(() {
                     total = int.parse(n1.text)*int.parse(n2.text);
                     str=total.toString();
                   });
                   SharedPreferences add = await SharedPreferences.getInstance();
                   add.setString("result", str.toString());

                   n1.text="";
                   n2.text="";
                  },

                  child: Text("*"),
                ),
                ElevatedButton(
                  onPressed: ()async{
                   setState(() {
                     total = int.parse(n1.text)~/int.parse(n2.text);
                     str=total.toString();
                   });
                   SharedPreferences prefs = await SharedPreferences.getInstance();
                   prefs.setString("result",str.toString());

                   n1.text="";
                   n2.text="";
                  },

                  child: Text("/"),
                ),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: ()async{
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    if(prefs.containsKey("result"))
                      {
                        var n = prefs.getString("result");
                        setState(() {
                          str=n;
                        });
                      }
                    else{
                      setState(() {
                        str="No Value ";
                      });
                    }

                  },

                  child: Text("Get Last Value "),
                ),
                ElevatedButton(
                  onPressed: ()async{
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    if(prefs.containsKey("result"))
                    {
                      prefs.remove("result");
                      setState(() {
                        str="0";
                      });
                    }
                    else
                      {
                        setState(() {
                          str="No Value Please Add Value ";
                        });
                      }
                  },
                  child: Text("Remove"),
                ),
                Text("result: "+ str.toString())
              ],
            ),
          ],
        ),
      ),
    );
  }
}
