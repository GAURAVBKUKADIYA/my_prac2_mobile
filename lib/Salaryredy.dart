import 'package:flutter/material.dart';

class Salaryredy extends StatefulWidget {

  var fname="";
  var femai="";
  var fadd="";
  var gender="";
  var fsalary="";
  var dept="";

  Salaryredy({this.fname,this.femai,this.fadd,this.fsalary,this.gender,this.dept});
  @override
  _SalaryredyState createState() => _SalaryredyState();
}

class _SalaryredyState extends State<Salaryredy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("your salary",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
           children: [
             Card(
              color: Colors.black12,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("NAME:"+widget.fname,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                   Divider(height: 10.0,color: Colors.black,),

                   Text("email:"+widget.femai,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                   Divider(height: 10.0,color: Colors.white,),

                   Text("ADDRES:"+widget.fadd,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                   Divider(height: 10.0,color: Colors.white,),

                   Text("Gender:"+widget.gender,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                   Divider(height: 5.0,color: Colors.white,),

                   Text("DEPARTMENT:"+widget.dept,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                   Divider(height: 2.0,color: Colors.indigo,),

                   Text("SALARY:"+widget.fsalary,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),


                 ],
               ),
             ),
             SizedBox(height: 30.0,),
             GestureDetector(
               onTap: (){
                 Navigator.of(context).pop();
               },
               child: Container(
                 width: MediaQuery.of(context).size.width,
                 height: 50.0,
                 margin: EdgeInsets.all(15.0),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15.0),
                   color: Colors.indigo,
                 ),
                 alignment: Alignment.center,
                 child: Text("BACK",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.white),),
               ),
             ),
           ],
          ),
        ),
      ),
    );
  }
}
