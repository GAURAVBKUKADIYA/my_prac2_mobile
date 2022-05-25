import 'package:flutter/material.dart';
import 'package:my_prac2_mobile/Mxplayer.dart';


class AlertDialogBoxDemo extends StatefulWidget {

  @override
  State<AlertDialogBoxDemo> createState() => _AlertDialogBoxDemoState();
}

class _AlertDialogBoxDemoState extends State<AlertDialogBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Alert,DialogBox Demo",style: TextStyle(fontSize: 25.0),),
        ),
      ),
      body: Center(
        child: ElevatedButton(
        style: ElevatedButton.styleFrom(
    primary: Colors.red, padding: EdgeInsets.all(15.0),),
          onPressed: (){
            AlertDialog alert = AlertDialog(
              title: Text("Add Your Dettails"),
              content:Container(
                height: 220,

                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Name",
                        border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)
                        ),
                      ),
                      keyboardType:TextInputType.text,
                    ),

                    SizedBox(height: 10.0,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Your ID",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)
                        ),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 10.0,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)
                        ),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ],
                ),
              ),
              actions: [
                Row(
                  children: [

                    ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Mxplayer())
                        );
                      },

                      child: Text("Login",style: TextStyle(fontSize: 25.0),),
                    ),
                    SizedBox(width: 35.0,),

                    ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: Text("Cancle",style: TextStyle(fontSize: 25.0),),
                    ),


                  ],
                ),
              ],
            );
            showDialog(context: context, builder:(context){
              return alert;
            });
          },
          child: Text("Press"),
        ),
      ),
    );
  }
}
