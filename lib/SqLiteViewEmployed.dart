import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'SqliteEmployedUpdate.dart';
import 'helper/DatabaseHandler.dart';

class SqLiteViewEmployed extends StatefulWidget {


  @override
  State<SqLiteViewEmployed> createState() => _SqLiteViewEmployedState();
}

class _SqLiteViewEmployedState extends State<SqLiteViewEmployed> {

  Future<List> alldata;

  getdeta() async
  {
    DatabaseHandler obj = new DatabaseHandler();
    setState(() {
      alldata = obj.getAllEmployed();
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdeta();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("SqLiteViewEmployed"),
        ),
      ),
     body: FutureBuilder(
       future: alldata,
       builder: (context,snapshots)
       {
         if(snapshots.data.length<=0)
         {
           Fluttertoast.showToast(
               msg: "Please add Employed details",
               toastLength: Toast.LENGTH_SHORT,
               gravity: ToastGravity.BOTTOM,
               timeInSecForIosWeb: 1,
               backgroundColor: Colors.red,
               textColor: Colors.white,
               fontSize: 16.0);

         }
         if(snapshots.hasData)
         {
           if(snapshots.data.length<=0)
           {
             return Center(child: Text("No employed Data Available!"),);
           }
           else
           {
             return ListView.builder(
               itemCount: snapshots.data.length,
               itemBuilder: (context,index)
               {
                 return Container(
                   width: MediaQuery.of(context).size.width,
                   height: 200.0,
                   color: Colors.green,
                   margin: EdgeInsets.all(15.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Name:"+snapshots.data[index]["employed_name"].toString()),
                       Text("Sallary : "+snapshots.data[index]["sallary"].toString()),
                       Text("gender:"+snapshots.data[index]["gender"].toString(),style: TextStyle(fontSize: 20),),
                       Text("email:"+snapshots.data[index]["email"].toString()),
                       Text("department:" +snapshots.data[index]["dept"].toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15),),

                       Center(
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                            ElevatedButton(onPressed: (){

                             AlertDialog alert = AlertDialog(
                               title: Text("Warning",style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.bold),),
                               content:Text("Are You Sure Employed Data delete"),
                               actions: [
                                 ElevatedButton(
                                   onPressed: ()async{
                                     var pid = snapshots.data[index]["pid"].toString();

                                     DatabaseHandler obj = new DatabaseHandler();
                                     var stutas =await obj.deleteemployed(pid);

                                     Navigator.of(context).pop();
                                     getdeta();

                                   },

                                   child: Text("Yes"),
                                 ),
                                 ElevatedButton(
                                   onPressed: (){
                                     Navigator.of(context).pop();
                                   },

                                   child: Text("No"),
                                 ),
                               ],);
                             showDialog(context: context,
                                 builder: (context){
                                   return alert;
                                 });


                           },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red, // Background color
                                ),
                                child: Text("Delete")),

                           ElevatedButton(
                               onPressed:(){
                                 var pid = snapshots.data[index]["pid"].toString();



                                 Navigator.of(context).push(
                                   MaterialPageRoute(builder: (context)=>SqliteEmployedUpdate(updateid: pid))
                                 );
                               },



                               style: ElevatedButton.styleFrom(
                                 primary: Colors.grey, // Background color
                               ),
                               child:Text("Update"))
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
           return Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               CircularProgressIndicator(),
               Text("Please Wait...")
             ],
           );
         }
       },
     ),
    );
  }
}
