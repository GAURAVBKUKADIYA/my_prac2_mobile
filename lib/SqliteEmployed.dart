import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_prac2_mobile/helper/DatabaseHandler.dart';

class SqliteEmployed extends StatefulWidget {


  @override
  State<SqliteEmployed> createState() => _SqliteEmployedState();
}

class _SqliteEmployedState extends State<SqliteEmployed> {

  TextEditingController _name = TextEditingController();
  TextEditingController _sallary = TextEditingController();
  TextEditingController _email =  TextEditingController();

  var _gender ="male";
  var _select = "Employed";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("SqliteEmployed"),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              TextField(
                controller: _name,
                decoration:InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                ) ,

                keyboardType: TextInputType.text,
              ),

              SizedBox(height: 10.0,),

              Text("Sallary",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              TextField(
                controller: _sallary,
                decoration:InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                ) ,

                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10.0,),

              Text("EmailAddress",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              TextField(
                controller: _email,
                decoration:InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                ) ,

                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Gendre:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Radio(
                    groupValue: _gender,
                    value: "male",
                    onChanged: (val)
                    {
                      setState(() {
                        _gender = val;
                      });
                    },
                  ),
                  Text("Male",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  Radio(
                    groupValue: _gender,
                    value: "female",
                    onChanged: (val)
                    {
                      setState(() {
                        _gender = val;
                      });
                    },
                  ),
                  Text("Female",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

                  Radio(
                    groupValue: _gender,
                    value: "other",
                    onChanged: (val)
                    {
                      setState(() {
                        _gender = val;
                      });
                    },
                  ),
                  Text("Other",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 10,),
              Row(

                children: [
                  Text("Department:",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                  DropdownButton(
                    value: _select,
                    onChanged: (val)
                    {
                      setState(() {
                        _select=val;
                      });
                    },
                    items: [
                      DropdownMenuItem(
                        child: Text("Employed"),
                        value: "Employed",
                      ),
                      DropdownMenuItem(
                        child: Text("Marketing"),
                        value: "Marketing",
                      ),
                      DropdownMenuItem(
                        child: Text("Production"),
                        value: "Production",
                      ),
                      DropdownMenuItem(
                        child: Text("Staff"),
                        value: "Staff",
                      ),
                      DropdownMenuItem(
                        child: Text("Delivery"),
                        value: "Delivery",
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: ()async{
                        var name = _name.text.toString();
                        var sallary = _sallary.text.toString();
                        var email = _email.text.toString();
                        var gender = _gender.toString();
                        var select = _select.toString();


                        DatabaseHandler obj = new DatabaseHandler();
                        var id = await obj.addemployed(name,sallary,email,gender,select);
                        print("add Employed Deta"+id.toString());



                      },

                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(120, 50),
                        primary: Colors.green,),
                      child: Text("Add"),
                    ),


                    ElevatedButton(
                      onPressed: (){},

                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(130, 40),
                        primary: Colors.red,),
                      child: Text("Cancle"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
