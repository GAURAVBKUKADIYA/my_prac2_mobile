import 'package:flutter/material.dart';

class Formg extends StatefulWidget {
  @override
  _FormgState createState() => _FormgState();
}

class _FormgState extends State<Formg> {
  var formkey = GlobalKey<FormState>();

  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TEXTFORM"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children:[
              Text("number 1",style: TextStyle(fontSize: 20.0),),
              TextFormField(
                controller: number1,
                keyboardType: TextInputType.number,
                 validator: (val)
                {
                 if(val.length<=0)
                   {
                     return "add curunt num";
                   }
                 return null;
                },
              ),
              SizedBox(height: 10.0,),
              Text("number2",style: TextStyle(fontSize: 20.0),),
              TextFormField(
                controller: number2,
                keyboardType: TextInputType.number,
                validator: (val)
                  {
                    if(val.length<=0) {
                      return "please Enter right number";
                    }
                    return null;
                  },
              ),
              ElevatedButton(
               onPressed: (){
                 if(formkey.currentState.validate())
                   {
                     var num1 = int.parse(number1.text.toString());
                     var num2 = int.parse(number2.text.toString());
                     var total = num1 + num2;
                     print("Total : "+total.toString());
                   }
               },
                child: Text("Total"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
