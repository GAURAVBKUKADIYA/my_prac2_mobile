import 'package:flutter/material.dart';

import 'package:my_prac2_mobile/helper/DatabaseHandler.dart';
import 'SqliteViewStudent.dart';

class SqLiteStudentUpdate extends StatefulWidget {

  var  updateid;
  SqLiteStudentUpdate({this.updateid});


  @override
  State<SqLiteStudentUpdate> createState() => _SqLiteStudentUpdateState();
}

class _SqLiteStudentUpdateState extends State<SqLiteStudentUpdate> {

  TextEditingController _name = TextEditingController();
  TextEditingController _rollno = TextEditingController();
  TextEditingController _mathes = TextEditingController();
  TextEditingController _social = TextEditingController();
  TextEditingController _scince = TextEditingController();

  getupdatedata() async {
    DatabaseHandler obj = new DatabaseHandler();
    var updatedata = await obj.getSinglestudents(widget.updateid);
    setState(() {
       _name.text = updatedata[0]["studentname"].toString();
       _rollno.text = updatedata[0]["rollno"].toString();
       _mathes.text = updatedata[0]["mathes"].toString();
       _social.text = updatedata[0]["social"].toString();
       _scince.text = updatedata[0]["scince"].toString();
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
          child: Text("Student Update Result"),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Text("Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              TextField(
                controller: _name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(15)
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
              Text("RollNo",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              TextField(
                controller: _rollno,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(15)
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              Text("Mathes",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              TextField(
                controller: _mathes,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(15)
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              Text("Social",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              TextField(
                controller: _social,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(15)
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              Text("Scince",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              TextField(
                controller: _scince,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(15)
                  ),
                ),
                keyboardType: TextInputType.number,
              ),


              Center(
               child: ElevatedButton(
                 onPressed: (){

                   var name =_name.text.toString();
                   var rollno = _rollno.text.toString();
                   var mathes = _mathes.text.toString();
                   var social = _social.text.toString();
                   var scince = _scince.text.toString();

                   DatabaseHandler obj = new DatabaseHandler();
                   obj.savestudents(name,rollno,mathes,social,scince,widget.updateid);


                   Navigator.of(context).pop();
                   Navigator.of(context).pop();
                   Navigator.of(context).push(
                     MaterialPageRoute(builder: (context)=>SqliteViewStudent())
                   );


                 },

                 child: Text("Update"),
               ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
