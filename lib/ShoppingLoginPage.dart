import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_prac2_mobile/ShoppingSharedPreferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShoppingLoginPage extends StatefulWidget {

  @override
  State<ShoppingLoginPage> createState() => _ShoppingLoginPageState();
}

class _ShoppingLoginPageState extends State<ShoppingLoginPage> {

  TextEditingController _id =  TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("ShopLogin"),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ID",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold),),
            TextField(
              controller: _id,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10,),
            Text("Password",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
            TextField(
              controller: _password,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10,),
            Center(
              child: ElevatedButton(
                onPressed: ()async{

                  var id = _id.text.toString();
                  var password = _password.text.toString();

                  if(id=="" && password=="")
                    {
                      Fluttertoast.showToast(
                          msg: "Plesae Entare Your Id And Password ",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.purple,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                  else if(id=="123" && password=="123")
                    {
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      prefs.setString("_id",id );
                      prefs.setString("_password", password);

                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>ShoppingSharedPreferences())
                      );

                    }
                  else
                    {
                      Fluttertoast.showToast(
                          msg: "Incorect Id And Password",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                },

                child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
