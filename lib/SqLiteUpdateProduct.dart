import 'package:flutter/material.dart';
import 'package:my_prac2_mobile/helper/DatabaseHandler.dart';

import 'SqLiteViewProduct.dart';

class SqLiteUpdateProduct extends StatefulWidget {

  var updateid;
  SqLiteUpdateProduct({this.updateid});


  @override
  State<SqLiteUpdateProduct> createState() => _SqLiteUpdateProductState();
}

class _SqLiteUpdateProductState extends State<SqLiteUpdateProduct> {

  TextEditingController _name = TextEditingController();
  TextEditingController _qty = TextEditingController();
  TextEditingController _rprice= TextEditingController();
  TextEditingController _sprice = TextEditingController();


  getupdatedata() async
  {
    DatabaseHandler obj = new DatabaseHandler();
    var updatedata = await obj.getSingleProduct(widget.updateid);
    setState(() {
      _name.text = updatedata[0]["product_name"].toString();
      _qty.text = updatedata[0]["qty"].toString();
      _rprice.text = updatedata[0]["rprice"].toString();
      _sprice.text = updatedata[0]["sprice"].toString();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getupdatedata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Update Product"),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
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
                keyboardType: TextInputType.text,
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
                keyboardType: TextInputType.text,
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
                keyboardType: TextInputType.text,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: (){

                    var name = _name.text.toString();
                    var qty = _qty.text.toString();
                    var rprice = _rprice.text.toString();
                    var sprice = _sprice.text.toString();

                    DatabaseHandler obj = new DatabaseHandler();
                    obj.saveproduct(name,qty,rprice,sprice,widget.updateid);

                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=>SqLiteViewProduct())
                    );

                  },

                  child: Text("Update"),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
