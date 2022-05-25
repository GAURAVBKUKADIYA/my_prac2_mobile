import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SherdRefrenceDemo extends StatefulWidget {


  @override
  State<SherdRefrenceDemo> createState() => _SherdRefrenceDemoState();
}

class _SherdRefrenceDemoState extends State<SherdRefrenceDemo> {

  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();

  int sum=0;
  var str="0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child:Text("SherdRefrenceDemo"),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
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
            SizedBox(height: 20.0,),
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
                      sum = int.parse(n1.text)+ int.parse(n2.text);
                      str=sum.toString();
                    });

                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    prefs.setString("result", str.toString());

                    print("Value Stored in memory");

                    n1.text="";
                    n2.text="";


                  },
                  child: Text("Add"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    //read
                    SharedPreferences prefs = await SharedPreferences.getInstance();

                    if(prefs.containsKey("result"))
                      {
                         var n = prefs.getString("result");
                         setState(() {
                           str=n;
                         });
                      }
                    else
                      {
                        setState(() {
                          str="No value in memory";
                        });
                      }

                  },
                  child: Text("Get Last Value"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    //read
                    SharedPreferences prefs = await SharedPreferences.getInstance();

                    if(prefs.containsKey("result"))
                    {
                        //prefs.clear();//all value
                      prefs.remove("result");
                      setState(() {
                        str="0";
                      });
                      print("value removed");
                    }
                    else
                    {
                      setState(() {
                        str="No value";
                      });
                    }

                  },
                  child: Text("Remove"),
                ),
              ],
            ),
            Text("Result : "+str.toString())
          ],
        ),
      ),
    );
  }
}
