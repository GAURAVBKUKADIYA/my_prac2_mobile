import 'package:flutter/material.dart';

class Checkboxexample extends StatefulWidget {

  @override
  _CheckboxexampleState createState() => _CheckboxexampleState();
}

class _CheckboxexampleState extends State<Checkboxexample> {

  var ch1=false;
  var ch2=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkboxexample"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Checkbox(
                value: ch1,
                activeColor: Colors.red,
                onChanged: (val)
                {
                  print(val);
                  setState(() {
                    ch1=val;
                  });
                },
              ),
              Checkbox(
                value: ch2,
                activeColor: Colors.red,
                onChanged: (val)
                {
                  print(val);
                  setState(() {
                    ch2=val;
                  });
                },
              ),
              RaisedButton(
                onPressed: (){
                  if(ch1)
                    {
                      print("Checkbox 1 is Checked");
                    }
                  else
                    {
                      print("Checkbox 1 is Unchecked");
                    }
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
