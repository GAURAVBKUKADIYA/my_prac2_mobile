import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dialmenuscren extends StatefulWidget {


  @override
  _DialmenuscrenState createState() => _DialmenuscrenState();
}

class _DialmenuscrenState extends State<Dialmenuscren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Dialmenu"),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("*#101"),
              Text("data123"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("shape"),
              Text("ruby"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("color"),
              Text("xyz"),
            ],
          ),
        ],
      ),
    );
  }
}
