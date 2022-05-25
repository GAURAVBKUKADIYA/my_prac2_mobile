import 'package:flutter/material.dart';

class StudentresultStatemange extends StatefulWidget {

  @override
  _StudentresultStatemangeState createState() => _StudentresultStatemangeState();
}

class _StudentresultStatemangeState extends State<StudentresultStatemange> {

  var name =  "";
  var roll =  "";
  var mat  =  "";
  var sci  =  "";
  var eng  =  "";
  var total = "";
  var pre   = "";
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  TextEditingController n3 = TextEditingController();
  TextEditingController n4 = TextEditingController();
  TextEditingController n5 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StudentresultStatemange"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Name",style: TextStyle(fontSize: 20.0),),
            TextField(
              controller: n1,
              keyboardType:TextInputType.text,
            ),
            Text("RollNo",style: TextStyle(fontSize: 20.0),),
            TextField(
              controller: n2,
              keyboardType: TextInputType.number,
            ),
            Text("Mathes",style: TextStyle(fontSize: 20.0),),
            TextField(
              controller: n3,
              keyboardType:TextInputType.number,
            ),
            Text("Scince",style: TextStyle(fontSize: 20.0),),
            TextField(
              controller: n4,
              keyboardType:TextInputType.number,
            ),
            Text("English",style: TextStyle(fontSize: 20.0),),
            TextField(
              controller: n5,
              keyboardType:TextInputType.number,
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      name = n1.text.toString();
                      roll = n2.text.toString();
                      mat  = n3.text.toString();
                      sci  = n4.text.toString();
                      eng  = n5.text.toString();
                      var t = int.parse(mat)+int.parse(sci)+int.parse(eng);
                      total=t.toString();
                      var p = t / 3;
                      pre =p.toString();


                    });
                  },
                  child: Text("Result"),
                ),
                Text("Name : "+name,style: TextStyle(fontSize: 25.0),),
                Text("Roll No:"+roll,style:TextStyle(fontSize: 25.0),),
                Text("Mathes:"+mat,style: TextStyle(fontSize: 25.0),),
                Text("Scince:"+sci,style: TextStyle(fontSize: 25.0),),
                Text("English:"+eng,style: TextStyle(fontSize: 25.0),),
                Text("Total:"+total,style: TextStyle(fontSize: 25.0),),
                Text("your Percentage="+pre+"%",style: TextStyle(fontSize: 35.0,color: Colors.red, fontWeight: FontWeight.bold),),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
