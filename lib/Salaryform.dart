
import 'package:flutter/material.dart';
import 'package:my_prac2_mobile/Salaryredy.dart';

class Formrevisondemo extends StatefulWidget {

  @override
  _FormrevisondemoState createState() => _FormrevisondemoState();
}

class _FormrevisondemoState extends State<Formrevisondemo> {
  var gender="";
  var ch1=false;
  var depart="marketing";
  var errormsg="",nameerror="",emailerror="";





  TextEditingController name = TextEditingController();
  TextEditingController email= TextEditingController();
  TextEditingController add= TextEditingController();
  TextEditingController salary= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("karon infotech(Pvt L.t.d)",style: TextStyle(fontSize: 25.0),),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
            Row(
              children: [
                Text("NAME:",style:TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                Flexible(
                  child: TextField(
                    controller: name,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
              ],
              ),
             Text(nameerror),
             SizedBox(height: 15.0,),
              Row(
                children: [
                  Text("email:",style:TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
                  Flexible(
                    child: TextField(
                      controller: email,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Text(emailerror)
                ],
              ),
              SizedBox(height: 15.0,),
              Row(
                children: [
                  Text("ADDRESS:",style:TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                  Flexible(
                    child: TextField(
                      controller: add,
                      maxLines: 3,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Text("Gender:",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      Radio(
                        groupValue: gender,
                        activeColor: Colors.blue,
                        value: "male",
                        onChanged: (val)
                          {
                            setState(() {
                              gender=val;
                            });
                          },
                      ),
                      Text("Male",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                      Radio(
                        groupValue: gender,
                        activeColor: Colors.green,
                        value: "Female",
                        onChanged: (val)
                        {
                          setState(() {
                            gender=val;
                          });
                        },
                      ),
                      Text("Female",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                      Radio(
                        groupValue: gender,
                        activeColor: Colors.red,
                        value: "other",
                        onChanged: (val)
                        {
                          setState(() {
                            gender=val;
                          });
                        },
                      ),
                      Text("Other",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                children: [
                  Text("Salary:",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                  Flexible(
                    child: TextField(
                      controller: salary,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0))
                        ),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 55.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
               Container(
                 color: Colors.blueGrey,
                  child: DropdownButton(
                   dropdownColor: Colors.grey,
                   value: depart,
                   onChanged: (val)
                   {
                     setState(() {
                       depart=val;
                     });
                   },
                   items: [
                     DropdownMenuItem(
                       child: Text("marketing",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color:Colors.white),),
                       value: "marketing",
                     ),
                     DropdownMenuItem(
                       child: Text("staff",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color:Colors.white),),
                       value: "staff",
                     ),
                     DropdownMenuItem(
                       child: Text("manufacture",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color:Colors.white),),
                       value: "manufacture",
                     ),
                     DropdownMenuItem(
                       child: Text("team member",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color:Colors.white),),
                       value: "team member",
                     ),
                   ],
                 ),
               ),
                ],
              ),
              SizedBox(height: 35.0,),
              Row(
                children: [
                  Text("I Accepted all terms and condtion:",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.red),),
                  Checkbox(
                    activeColor: Colors.blue,
                    value: ch1,
                    onChanged:(val)
                    {
                      setState(() {
                        ch1=val;
                      });
                    },
                  ),
                ],
              ),
              Text(errormsg),
              SizedBox(height:55.0,),
              Row(
                children: [
                  GestureDetector(
                    onTap:(){
                      var nm = name.text.toString();
                      var emi = email.text.toString();
                      var ads = add.text.toString();
                      var sal = salary.text.toString();
                      if(nm.length<=0)
                        {
                          setState(() {
                            nameerror="Please Enter Name";
                          });
                        }
                      else if(emi.length<=0)
                      {
                        setState(() {
                          nameerror="";
                          emailerror="Please Enter Email";
                        });
                      }
                      else if(ch1)
                        {
                          setState(() {
                            errormsg ="";
                          });
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)=>Salaryredy(
                                fname: nm,femai: emi,fadd: ads,fsalary: sal,gender:gender,dept: depart,
                              ))
                          );
                        }
                      else{
                        setState(() {
                          nameerror="";
                          emailerror="";
                          errormsg ="please accepted terms and condition";

                        });
                      }


                    },

                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40.0,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.indigo,
                      ),
                      alignment: Alignment.center,
                      child: Text("Submit",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.white),),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
