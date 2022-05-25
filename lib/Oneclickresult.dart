import 'package:flutter/material.dart';

import 'Resultdemo.dart';

class Oneclickresult extends StatefulWidget {

  @override
  _OneclickresultState createState() => _OneclickresultState();
}

class _OneclickresultState extends State<Oneclickresult> {
  var total ="";
  var pre = "";

  TextEditingController _name = TextEditingController();
  TextEditingController _roll = TextEditingController();
  TextEditingController _social  = TextEditingController();
  TextEditingController _mathes = TextEditingController();
  TextEditingController _english = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("on click show result"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Text("NAME"),
                TextField(
                  controller:_name,
                  keyboardType:TextInputType.text,
                ),
                Text("ROLL NO"),
                TextField(
                  controller: _roll,
                  keyboardType: TextInputType.number,
                ),
                Text("social"),
                TextField(
                  controller: _social,
                  keyboardType: TextInputType.number,
                ),
                Text("mathes"),
                TextField(
                  controller: _mathes,
                  keyboardType:TextInputType.number,
                ),
                Text("ENGLISH"),
                TextField(
                  controller: _english,
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: (){
                var nm =_name.text.toString();
                var rn =_roll.text.toString();
                var sci =_social.text.toString();
                var mat =_mathes.text.toString();
                var eng =_english.text.toString();
                var t = int.parse(sci)+int.parse(mat)+int.parse(eng);
                total = t.toString();
                var p = t / 3;
                pre =p.toString();

                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> Resultdemo(firstname: nm,rollno: rn,subs: sci,math: mat,eng1: eng,total1: total,pre1: pre,))
                );
              },

              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              child: Text("RESULT",style: TextStyle(fontSize: 25.0,color: Colors.white),),
            ),

          ],
        ),
      ),
    );
  }
}
