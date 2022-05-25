import 'package:flutter/material.dart';
import 'package:my_prac2_mobile/SqLiteViewEmployed.dart';
import 'package:my_prac2_mobile/helper/DatabaseHandler.dart';

class SqliteEmployedUpdate extends StatefulWidget {

  var updateid;
  SqliteEmployedUpdate({this.updateid});

  @override
  State<SqliteEmployedUpdate> createState() => _SqliteEmployedUpdateState();
}

class _SqliteEmployedUpdateState extends State<SqliteEmployedUpdate> {

  TextEditingController _name =TextEditingController();
  TextEditingController _sallary= TextEditingController();
  TextEditingController _email = TextEditingController();

  var _gender ="male";
  var _select ="Employed";

  getupdatedata()async
  {
    DatabaseHandler obj = new DatabaseHandler();
    var updatedata = await obj.getSingleEmployed(widget.updateid);
    setState(() {
      _name.text = updatedata[0]["employed_name"].toString();
      _sallary.text = updatedata[0]["sallary"].toString();
      _email.text = updatedata[0]["email"].toString();
      _gender=updatedata[0]["gender"].toString();
      _select=updatedata[0]["dept"].toString();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getupdatedata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Employed Update"),
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
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 10,),
              Text("sallary",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              TextField(
                controller: _sallary,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10,),
              Text("email",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              TextField(
                controller: _email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
                keyboardType: TextInputType.text,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Gender:",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  Radio(
                    groupValue: _gender,
                    value: "male",
                    onChanged: (val)
                    {
                      setState(() {
                        _gender=val;
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
                          _gender=val;
                        });
                      },

                  ),
                  Text("Female",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  Radio(
                    groupValue:_gender,
                    value: "other",
                    onChanged: (val)
                      {
                        setState(() {
                          _gender=val;
                        });
                      },
                  ),
                  Text("Other",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("Department:",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold),),
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
                        child: Text("Production"),
                        value: "Production",
                      ),
                      DropdownMenuItem(
                        child: Text("Marketing"),
                        value: "Marketing",
                      ),
                      DropdownMenuItem(
                        child: Text("Staff"),
                        value: "Staff",
                      ),DropdownMenuItem(
                        child: Text("Delivery"),
                        value: "Delivery",
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Center(
                child: ElevatedButton(
                  onPressed: (){
                    var name = _name.text.toString();
                    var sallary =_sallary.text.toString();
                    var email = _email.text.toString();
                    var gender = _gender.toString();
                    var select = _select.toString();

                    DatabaseHandler obj = new DatabaseHandler();

                    obj.saveemployed(name,sallary,email,gender,select,widget.updateid);

                    Navigator.of(context).pop();
                    Navigator.of(context).pop();

                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>SqLiteViewEmployed())
                    );


                  },

                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(250, 50),
                    maximumSize: const Size(350, 350),
                  ),
                  child: Text("Update",style:TextStyle(fontSize: 20),),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
