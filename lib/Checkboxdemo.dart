
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Checkboxdemo extends StatefulWidget {

  @override
  _CheckboxdemoState createState() => _CheckboxdemoState();
}

class _CheckboxdemoState extends State<Checkboxdemo> {
  @override

  var ch1= true;
  var ch2= true;
  var ch3= true;
  var ch4= true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chekbox DEMO"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children:[
              Row(
                children: [
                  Text("I Accept terms and condtion",style: TextStyle(fontSize: 25.0),),
                  Checkbox(
                    value: ch1,
                    activeColor: Colors.green,
                    onChanged: (val)
                    {
                      print(val);
                      setState(() {
                        ch1=val;
                      });
                    },
                  ),
                ],
              ),

              ElevatedButton(
                onPressed: (){
                  if(ch1)
                    {
                      print("I accept terms and condition");
                    }
                  else{
                    print("you can procced please accept terms and condition");
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue
                ),
                child: Text("submit"),
              ),
              SizedBox(height: 20.0,),

              Column(
               children: [
                 Row(
                   children: [
                     Text("Reading",style: TextStyle(fontSize: 20.0),),
                     Checkbox(
                       value: ch2,
                       activeColor: Colors.blueGrey,
                       onChanged: (val)
                         {
                           print(val);
                           setState(() {
                             ch2=val;
                           });
                         },
                     ),
                    Row(
                      children: [
                        Text("writing",style: TextStyle(fontSize: 20.0),),
                        Checkbox(
                          value: ch3,
                          activeColor: Colors.black,
                          onChanged: (val)
                          {
                            print(val);
                            setState(() {
                              ch3=val;
                            });
                          },
                        ),
                      ],
                    ),
                     Text("Movie",style: TextStyle(fontSize: 20.0),),
                     Checkbox(
                       value: ch4,
                       activeColor: Colors.purple,
                       onChanged: (val)
                       {
                         print(val);
                         setState(() {
                           ch4=val;
                         });
                       },
                     ),
                   ],
                 ),
                 SizedBox(height: 20.0,),
                 ElevatedButton(
                   onPressed: (){
                     if(ch2)
                     {
                       print("Reading is checked");
                     }

                     if(ch3)
                       {
                         print("Writing is checked");
                       }

                     if(ch4)
                       {
                         print("Movie is checked");
                       }

                   },
                   style: ElevatedButton.styleFrom(
                     primary: Colors.black
                   ),
                   child: Text("submit",style: TextStyle(fontSize: 25.0),),
                 ),
               ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
