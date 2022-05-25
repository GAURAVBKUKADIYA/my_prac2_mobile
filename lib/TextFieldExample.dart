import 'package:flutter/material.dart';

class TextFieldExample extends StatefulWidget {

  @override
  _TextFieldExampleState createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {


  TextEditingController name = TextEditingController();
  TextEditingController mobile = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field Example"),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.purple.shade100,
            borderRadius: BorderRadius.circular(10.0)
          ),
          padding: EdgeInsets.all(15.0),
          margin: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name"),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(0.0)),
                  ),
                ),
                controller: name,
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 10.0),
              Text("Mobile Number"),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.phone),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
                controller: mobile,
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 10.0),
              Text("Email"),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  icon: Icon(Icons.email,color: Colors.indigo,)
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 10.0),
              Text("Password"),
              TextField(
                decoration: InputDecoration(
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  ),
                  icon: Icon(Icons.password,color: Colors.red,),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.yellow, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                keyboardType: TextInputType.text,
                obscureText: true,
              ),
              SizedBox(height: 10.0),
              Text("Age"),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.people_rounded,color:Colors.white,),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20.0),
              GestureDetector(
                onTap: (){
                  var n  = name.text.toString();
                  var m  = mobile.text.toString();
                  print("Mobile Number : "+m);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  alignment: Alignment.center,
                  height: 60.0,
                  child: Text("Submit",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
