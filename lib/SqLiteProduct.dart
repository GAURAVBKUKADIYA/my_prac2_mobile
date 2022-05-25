import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_prac2_mobile/helper/DatabaseHandler.dart';

class SqLiteProduct extends StatefulWidget {


  @override
  State<SqLiteProduct> createState() => _SqLiteProductState();
}

class _SqLiteProductState extends State<SqLiteProduct> {



  TextEditingController _name = TextEditingController();
  TextEditingController _qty = TextEditingController();
  TextEditingController _rprice = TextEditingController();
  TextEditingController _sprice = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Center(
          child: Text("SqLiteProduct"),
        ),
      ),
      body: SingleChildScrollView(
       child: Container(
         margin: EdgeInsets.all(15),
         padding: EdgeInsets.all(10),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text("Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
             SizedBox(height: 5,),
             TextField(
               controller: _name,
               decoration: InputDecoration(
                   hintText: ("Name"),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(15),
                   )
               ),
               keyboardType: TextInputType.text,
             ),
             SizedBox(height: 10.0,),
             Text("Quantity",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
             SizedBox(height: 5,),
             TextField(
               controller: _qty,
               decoration: InputDecoration(
                   hintText: ("Quantity"),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(15),
                   )
               ),
               keyboardType: TextInputType.number,
             ),

             SizedBox(height: 10.0,),
             Text("RegularPrice:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
             SizedBox(height: 5,),

             TextField(
               controller: _rprice,
               decoration: InputDecoration(
                   hintText: ("RegularPrice"),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(15),
                   )
               ),
               keyboardType: TextInputType.number,
             ),


             SizedBox(height: 10.0,),
             Text("SellPrice",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
             SizedBox(height: 5,),
             TextField(
               controller: _sprice,
               decoration: InputDecoration(
                   hintText: ("SellPrice"),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(15),
                   )
               ),
               keyboardType: TextInputType.number,
             ),
             SizedBox(height: 10.0,),
             Center(
               child: ElevatedButton(
                 onPressed: () async{

                   var name = _name.text.toString();
                   var qty = _qty.text.toString();
                   var rprice = _rprice.text.toString();
                   var sprice = _sprice.text.toString();


                   //insert
                   DatabaseHandler obj = new DatabaseHandler();
                   var id = await obj.addproduct(name,qty,rprice,sprice);
                   print("Record Inserted : "+id.toString());




                 },
                 child: Text("Add",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
               ),
             )
           ],
         ),
       ),
      ),
    );
  }
}
