import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_prac2_mobile/SqLiteStudentUpdate.dart';
import 'package:my_prac2_mobile/helper/DatabaseHandler.dart';
import 'helper/DatabaseHandler.dart';
import 'SqLiteStudentUpdate.dart';
class SqliteViewStudent extends StatefulWidget {


  @override
  State<SqliteViewStudent> createState() => _SqliteViewStudentState();
}

class _SqliteViewStudentState extends State<SqliteViewStudent> {

  Future<List> alldata;



  getdata() async
  {
    DatabaseHandler obj = new DatabaseHandler();
    setState(() {
      alldata = obj.getallstudens();
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        title: Center(
          child: Text("Student Result Recored",style: TextStyle(color: Colors.black),),
        ),
      ),
      body: FutureBuilder(
        future: alldata,
        builder: (context,snapshots)
          {
            if(snapshots.hasData)
              {
                if(snapshots.data.length<=0)
                  {
                     Fluttertoast.showToast(
                        msg: "Please add student details",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);

                  }
                else{
                  return ListView.builder(
                    itemCount: snapshots.data.length,
                    itemBuilder: (context,index){
                      return Container(
                        color: Colors.red.shade100,
                        width: MediaQuery.of(context).size.width,
                        height: 140,
                        //color: Colors.red.shade100,
                        margin: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nmae:"+snapshots.data[index]["studentname"].toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue)),
                            Text("RollNo:"+snapshots.data[index]["rollno"].toString(),style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("Mathes:"+snapshots.data[index]["mathes"].toString(),style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Social:"+snapshots.data[index]["social"].toString(),style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("Scince:"+snapshots.data[index]["scince"].toString(),style: TextStyle(fontWeight: FontWeight.bold)),



                               Center(
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: [
                                     ElevatedButton(
                                       onPressed: (){
                                         AlertDialog alert = AlertDialog(
                                             title: Text("Warning",style: TextStyle(fontSize: 25,color:Colors.red),),
                                             content: Text("Are you Sure Student Result delete"),
                                             actions: [
                                               ElevatedButton(
                                                 onPressed: ()async{
                                                   var sid = snapshots.data[index]["sid"].toString();

                                                   DatabaseHandler obj = new  DatabaseHandler();
                                                   var stutas = await  obj.deletestudents(sid);

                                                   Navigator.of(context).pop();
                                                   getdata();
                                                 },
                                                 child: Text("Yes"),
                                               ),
                                               ElevatedButton(
                                                 onPressed: ()async{


                                                   Navigator.of(context).pop();
                                                 },

                                                 child: Text("No"),
                                               ),
                                             ]);
                                         showDialog(
                                             context: context,
                                             builder: (context){
                                               return alert;
                                             });
                                       },
                                       child: Text("delete"),
                                     ),
                                     ElevatedButton(
                                       onPressed: ()async{

                                         var sid = snapshots.data[index]["sid"].toString();
                                         Navigator.of(context).push(
                                           MaterialPageRoute(builder: (context)=>SqLiteStudentUpdate(updateid: sid))
                                         );
                                       },

                                       child: Text("Update"),
                                     ),
                                   ],
                                 ),
                               ),

                          ],
                        ),
                      );
                    },
                  );
                }
              }
            else
              {
                return Center(child: CircularProgressIndicator());
              }
          },

      ),
    );
  }
}

