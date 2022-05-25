import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultdemo extends StatefulWidget {
  var firstname="";
  var rollno="";
  var subs="";
  var math="";
  var eng1="";
  var total1="";
  var pre1="";
  Resultdemo({this.firstname,this.rollno,this.subs,this.math,this.eng1,this.total1,this.pre1});
  @override
  _ResultdemoState createState() => _ResultdemoState();
}

class _ResultdemoState extends State<Resultdemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("get your result"),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blue.shade100,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("NAME:-"+widget.firstname,style: TextStyle(fontSize: 35.0,color: Colors.purple),),
              Divider(
                height: 5.0,
                thickness: 5.0,
                color: Colors.black,
              ),
              Text("ROLLNO:-"+widget.rollno,style: TextStyle(fontSize: 25.0,),),
              Divider(
                height: 1.0,
                color: Colors.black,
              ),
              Text("SOCIAL:-"+widget.subs,style: TextStyle(fontSize: 25.0),),
              Divider(
                height: 20.0,
                color: Colors.black,
              ),
              Text("MATHES:-"+widget.math,style: TextStyle(fontSize: 25.0),),
              Divider(
                height: 20.0,
                color: Colors.black,
              ),
              Text("ENGLISH:-"+widget.eng1,style: TextStyle(fontSize: 25.0),),
              Divider(
                height: 20.0,
                color: Colors.black,
              ),
              Text("your total is:"+widget.total1,style: TextStyle(fontSize: 40.0,color: Colors.blue),),
              Divider(
                height: 20.0,
                color: Colors.black,
              ),
              Text("PRCENTAGE:"+widget.pre1+"%",style: TextStyle(fontSize: 45,color: Colors.red,),),
              Divider(
                height: 40.0,
                color: Colors.black,
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60.0,
                  color: Colors.black,
                  alignment: Alignment.center,
                  child: Text("Back",style: TextStyle(color: Colors.white)),
                ),
              )
              // Row(
              //   children:[
              //     Column(
              //       children: [
              //         ElevatedButton(
              //           onPressed: (){
              //             Navigator.of(context).pop();
              //           },
              //           style: ElevatedButton.styleFrom(
              //               primary: Colors.grey,
              //           ),
              //           child: Text("BACK"),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
