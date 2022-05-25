import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Librarydemo extends StatefulWidget {

  @override
  State<Librarydemo> createState() => _LibrarydemoState();
}

class _LibrarydemoState extends State<Librarydemo> {
  void show(){
    Fluttertoast.showToast(
        msg: "This is Center Short Toast  ",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Librarydemo"),
        ),
      ),
      body:Center(
        child: ElevatedButton(
          onPressed: (){
            show();
          },
          child: Text("show"),
        ),
      ),
    );
  }
}
