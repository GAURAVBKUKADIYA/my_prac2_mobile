import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_prac2_mobile/Secondscreen.dart';

class Firstscreen extends StatefulWidget {

  @override
  _FirstscreenState createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {

  TextEditingController _name = TextEditingController(); //private public

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("one click change screen"),
      ),
      body: Column(
        children: [
          TextField(
            controller: _name,
          ),
          ElevatedButton(
            onPressed: (){
              var nm = _name.text.toString();
              var second="XYZ";
              //print("Name : "+nm);
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> Secondscreen(firstname: nm,lastname: second,))
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.black87,
            ),
            child: Text("\Second scrren"),
          )
        ],
      ),
    );
  }
}
