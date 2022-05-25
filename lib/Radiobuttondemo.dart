import 'package:flutter/material.dart';

class Radiobuttondemo extends StatefulWidget {


  @override
  _RadiobuttondemoState createState() => _RadiobuttondemoState();
}

class _RadiobuttondemoState extends State<Radiobuttondemo> {
var nm = "";
var pr = "";
var discount = "";
var disc10 = "";
var total = "";


  TextEditingController _name = TextEditingController();
  TextEditingController _prise = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Radiobuttondemo"),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Text("PRODUCT NAME",style: TextStyle(fontSize: 15.0),),
                TextField(
                  controller:_name,
                  keyboardType: TextInputType.text,
                ),
                Text("AMMOUNT"),
                TextField(
                  controller: _prise,
                  keyboardType: TextInputType.number,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("10%"),
                    Radio(
                      groupValue: discount,
                      value: "10",
                      onChanged: (val)
                        {
                          setState(() {
                            discount=val;
                          });
                        },
                    ),
                    Text("20%"),
                    Radio(
                      groupValue: discount,
                      value: "20",
                      onChanged: (val)
                        {
                          setState(() {
                            discount=val;
                          });
                        },
                    ),
                    Text("30%"),
                    Radio(
                      value: "30",
                      groupValue: discount,
                      onChanged: (val)
                        {
                          setState(() {
                            discount=val;
                          });
                        },
                    ),
                  ],
                ),
                SizedBox(height: 20.0,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      nm = _name.text.toString();
                      pr = _prise.text.toString();
                      var d = double.parse(pr)*double.parse(discount)/100;
                      disc10 = d.toString();
                      var t = double.parse(pr)-double.parse(disc10);
                      total = t.toString();
                    });

                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 30.0,
                    color: Colors.black,
                    alignment: Alignment.center,
                    child: Text("calculate",style: TextStyle(fontSize: 25.0, color: Colors.white)),
                  ),
                ),
                SizedBox(height:15.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name:"+nm,style: TextStyle(fontSize: 20.0),),
                    Divider(
                      height: 5.0,
                      color: Colors.black,
                    ),
                    Text("Price:"+pr,style: TextStyle(fontSize: 20.0),),
                    Divider(
                      height: 5.0,
                      color: Colors.black,
                    ),
                    Text("Discount:"+disc10,style: TextStyle(fontSize: 20.0,color: Colors.red),),
                    Divider(
                      height:5.0,
                      color: Colors.black,
                    ),
                    Text("Final Ammount:"+total,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                    Divider(
                      height: 20.0,
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
