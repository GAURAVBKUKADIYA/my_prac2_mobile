import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Statedemo extends StatefulWidget {

  @override
  _StatedemoState createState() => _StatedemoState();
}

class _StatedemoState extends State<Statedemo> {

  var total = "0";

  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("statemange demo create"),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Text("add num",style: TextStyle(fontSize: 20.0),),
            TextField(
              controller: n1,
              keyboardType: TextInputType.number,
            ),
            Text("add num",style: TextStyle(fontSize: 20.0),),
            TextField(
              controller: n2,
              keyboardType: TextInputType.number,
            ),
         Row(
               children: [
                 ElevatedButton(
                   onPressed: (){
                     var ne1 = n1.text.toString();
                     var ne2 = n2.text.toString();
                     var t = int.parse(ne1)+int.parse(ne2);
                     setState(() {
                       total=t.toString();
                     });
                   },
                   child: Text("+",style: TextStyle(fontSize: 30.0),),
                 ),


                Row(
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        var ne1 = n1.text.toString();
                        var ne2 = n2.text.toString();
                        var t = int.parse(ne1)-int.parse(ne2);
                        setState(() {
                          total=t.toString();
                        });
                      },
                      child: Text("-",style: TextStyle(fontSize: 30.0),),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: (){
                            var ne1 = n1.text.toString();
                            var ne2 = n2.text.toString();
                            var t = int.parse(ne1)*int.parse(ne2);
                            setState(() {
                              total=t.toString();
                            });
                          },
                          child:Text("*",style: TextStyle(fontSize: 30.0),),
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: (){
                                var ne1 = n1.text.toString();
                                var ne2 = n2.text.toString();
                                var t = int.parse(ne1)/int.parse(ne2);
                                setState(() {
                                  total=t.toString();
                                });
                              },
                              child: Text("/",style: TextStyle(fontSize: 30.0),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
               ],
               ),
            Column(
              children: [
                Text("Result : ${total}",style: TextStyle(fontSize: 30.0)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
