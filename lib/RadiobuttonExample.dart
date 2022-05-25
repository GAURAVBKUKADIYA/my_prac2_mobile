import 'package:flutter/material.dart';

class RadiobuttonExample extends StatefulWidget {
  @override
  _RadiobuttonExampleState createState() => _RadiobuttonExampleState();
}

class _RadiobuttonExampleState extends State<RadiobuttonExample> {
  var gender="male";


  _handleRadioButton(val)
  {
    setState(() {
      gender=val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child:Text("RadiobuttonExample"),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Male"),
              Radio(
                groupValue: gender,
                value: "male",
                onChanged: _handleRadioButton,
              ),
              Text("Female"),
              Radio(
                groupValue: gender,
                value: "female",
                onChanged:_handleRadioButton,
              ),
              RaisedButton(
                onPressed: (){
                  print("Gender : "+gender);
                },
                child: Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
