import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tabdemo2 extends StatefulWidget {


  @override
  State<Tabdemo2> createState() => _Tabdemo2State();
}

class _Tabdemo2State extends State<Tabdemo2> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Divider(),
          Image.asset("img/appphoto28.jpg"),
          Divider(),
          Image.asset("img/appphoto29.jpg"),
          Divider(),
          Image.asset("img/appphoto30.jpg"),
        ],
      ),

    );
  }
}
