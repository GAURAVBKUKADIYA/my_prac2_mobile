import 'package:flutter/material.dart';

class Statemangement extends StatefulWidget {
  @override
  _StatemangementState createState() => _StatemangementState();
}

class _StatemangementState extends State<Statemangement> {

  var name = "ABC";
  var total = "0";
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("create state mangement"),
            TextField(
              keyboardType:TextInputType.text,
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: (){
                   setState(() {
                     name="xyz";
                   });
                    print("Name : "+name);
                  },
                  child: Text("Submit"),
                ),
                Text("Name is ${name}"),
              ],
            ),

            SizedBox(height: 20.0,),
            Column(
              children: [
                Text("state mangement demo",style: TextStyle(fontSize: 20.0),),
                TextField(
                  controller: n1,
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: n2,
                  keyboardType: TextInputType.number,
                ),
                Column(
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

                      child: Text("done"),
                    ),
                    Text("your total done:" +total,style: TextStyle(fontSize: 30.0))
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
