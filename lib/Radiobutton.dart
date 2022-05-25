import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Radiobutton extends StatefulWidget {

  @override
  _RadiobuttonState createState() => _RadiobuttonState();
}

class _RadiobuttonState extends State<Radiobutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("radio button"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 1,
                  groupValue: 1,
                  activeColor: Colors.blue,
                  onChanged: (val) {
                    print("Radio $val");
                  },
                ),
                Radio(
                  value: 2,
                  groupValue: 2,
                  activeColor: Colors.red,
                  onChanged: (val){
                    print("Radio $val");
                  },
                ) ,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
