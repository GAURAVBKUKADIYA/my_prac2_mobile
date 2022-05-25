import 'package:flutter/material.dart';

class TextFormFieldExample extends StatefulWidget {

  @override
  _TextFormFieldExampleState createState() => _TextFormFieldExampleState();
}

class _TextFormFieldExampleState extends State<TextFormFieldExample> {

  var formkey = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();
  TextEditingController mobile = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextForm Field"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Text("Name"),
              TextFormField(
                controller: name,
                keyboardType: TextInputType.text,
                validator: (val)
                {
                  if(val.length<=0)
                    {
                      return "Please Enter Name";
                    }
                  return null;
                },
              ),
              SizedBox(height: 15.0),
              Text("Mobile Number"),
              TextFormField(
                controller: mobile,
                keyboardType: TextInputType.phone,
                validator: (val)
                {
                  if(val.length<=0)
                  {
                    return "Please Enter Mobile Number";
                  }
                  else if(val.length!=10)
                    {
                      return "Mobile Number is Invalid";
                    }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: (){
                  if(formkey.currentState.validate())
                    {
                      var n = name.text.toString();
                      print("Name : "+n);
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
