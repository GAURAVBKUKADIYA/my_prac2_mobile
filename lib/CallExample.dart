import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CallDemo extends StatefulWidget {

  @override
  State<CallDemo> createState() => _CallDemoState();
}

class _CallDemoState extends State<CallDemo> {

  TextEditingController  _num =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("call"),
        ),
      ),
      body:SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.purple.shade100,
              borderRadius: BorderRadius.circular(10.0)
          ),
          padding: EdgeInsets.all(15.0),
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text("Call"),
              TextField(
                controller: _num,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(0.0)),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              ElevatedButton(
                onPressed: (){
                  var num = _num.text.toString();
                  launch("tel://"+num);
                },
                child: Text("Dial"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
