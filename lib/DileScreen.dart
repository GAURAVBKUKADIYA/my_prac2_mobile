import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DileScreen extends StatefulWidget {

  @override
  _DileScreenState createState() => _DileScreenState();
}

class _DileScreenState extends State<DileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(
          child: Text("Dialpad"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Column(
              children: [
                Text("1"),
                Text("ABC")
              ],
            ),
              Column(
                children: [
                  Text("2"),
                  Text("DEF")
                ],
              ),
              Column(
                children: [
                  Text("3"),
                  Text("GHI")
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text("4"),
                  Text("JKL")
                ],
              ),
              Column(
                children: [
                  Text("5"),
                  Text("MNO")
                  
                ],
              ),
              Column(
                children: [
                  Text("6"),
                  Text("poQ"),
                ],
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text("7"),
                  Text("TRS"),
                ],
              ),
              Column(
                children: [
                  Text("8"),
                  Text("UVW"),
                ],
              ),
              Column(
                children: [
                  Text("9"),
                  Text("XYZ"),
                ],
              )


            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("*"),
              Text("0"),
              Text("#"),
            ],
          ),
        ],
      ),
      // body: Center(
      //   child: Text("mobnumber"),
      // )
    );
  }
}

