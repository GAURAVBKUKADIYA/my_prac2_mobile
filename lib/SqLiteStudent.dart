
import 'package:flutter/material.dart';
import 'package:my_prac2_mobile/helper/DatabaseHandler.dart';

class SqLiteStudent extends StatefulWidget {


  @override
  State<SqLiteStudent> createState() => _SqLiteStudentState();
}

class _SqLiteStudentState extends State<SqLiteStudent> {

  TextEditingController _name = TextEditingController();
  TextEditingController _rollno = TextEditingController();
  TextEditingController _mathes = TextEditingController();
  TextEditingController _social = TextEditingController();
  TextEditingController _scince = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(
          child: Text("SqLiteStudent",style: TextStyle(fontSize: 20.0,color: Colors.black),),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [

              SizedBox(height: 10,),
              Text("Name",style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold) ,),
              TextField(
                controller: _name,
                decoration: InputDecoration(
                  hintText: ("Name"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 10.0,),
              Text("RollNo:"),
              TextField(
                controller: _rollno,
                decoration: InputDecoration(
                  hintText: ("Roll No"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10.0,),
              Text("Mathes",style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold) ,),
              TextField(
                controller: _mathes,
                decoration: InputDecoration(
                  hintText: ("Mathes"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10.0,),
              Text("Social",style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold) ,),
              TextField(
                controller: _social,
                decoration: InputDecoration(
                  hintText: ("Social"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10.0,),
              Text("Scince",style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold) ,),
              TextField(
                controller: _scince,
                decoration: InputDecoration(
                  hintText: ("Scince"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: ()async{

                    var name = _name.text.toString();
                    var rollno = _rollno.text.toString();
                    var mathes = _mathes.text.toString();
                    var social = _social.text.toString();
                    var scince = _scince.text.toString();

                    DatabaseHandler obj = new DatabaseHandler();
                    var id = await obj.addstudent(name,rollno,mathes,social,scince);
                    print("Store Student Deta"+id.toString());
                  },


                  child: Text("Result"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
