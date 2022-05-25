import 'package:flutter/material.dart';

class Secondscreen extends StatefulWidget {
  var firstname="";
  var lastname="";

  Secondscreen({this.firstname,this.lastname}); //constrctor

  @override
  _SecondscreenState createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  var j="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.firstname),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(widget.firstname),
            Text(widget.lastname),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: EdgeInsets.all(15.0),
              ),
              child: Text("Back",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}
