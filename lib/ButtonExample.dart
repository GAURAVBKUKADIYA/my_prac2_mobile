import 'package:flutter/material.dart';
class ButtonExample extends StatefulWidget {

  @override
  _ButtonExampleState createState() => _ButtonExampleState();
}

class _ButtonExampleState extends State<ButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Example"),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){},
      //   backgroundColor: Colors.purple,
      //   child: Icon(Icons.save),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: Icon(
          Icons.add,
        ),
        heroTag: "demoTag",
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: (){},
      //   label: Text("ADD"),
      //   icon: Icon(Icons.message),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlatButton(
                onPressed: (){
                  print("Flat Button Click");
                },
                color: Colors.blue,
                textColor: Colors.white,
                splashColor: Colors.red,
                child: Text("Flat Button"),
              ),
              TextButton(
                onPressed: (){
                  print("Flat Button Click");
                },
                child: Text("Flat Button"),
              ),
              GestureDetector(
                onTap: (){

                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.red, Colors.blue],
                        begin: FractionalOffset(0.0, 0.0),
                        end: FractionalOffset(0.5, 0.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  child: Text("use by gradient colors",style: TextStyle(fontSize:19.0,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              ),
              RaisedButton(
                onPressed: (){
                  print("RaisedButton Click");
                },
                color: Colors.blue,
                textColor: Colors.white,
                splashColor: Colors.red,
                child: Text("Raised Button"),
              ),
              ElevatedButton(
                onPressed: (){
                  print("Elevated Button Click");
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  padding: EdgeInsets.all(15.0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                child: Text("Elevated Button"),
              ),
              SizedBox(height: 50.0,),
              InkWell(
                onTap: (){},
                child: Text("Ink Well"),
              ),
              IconButton(
                onPressed: (){},
                iconSize: 50.0,
                icon: Icon(Icons.star),
              ),
              GestureDetector(
                onTap: (){
                  print("Container Click");
                },
                child: Image.asset("img/img_car.jpg",width: 100.0,),
              ),
              OutlinedButton(
                style: ButtonStyle(
                  side:MaterialStateProperty.all(BorderSide(
                      color: Colors.black87,
                      width: 5.0,
                      style: BorderStyle.solid
                  )),),
                onPressed: (){},
                child:Text("Outline Button "),
              ),
              FlatButton(
                onPressed: (){
                  print("Flat Button Click");
                },
                color: Colors.blue,
                textColor: Colors.white,
                splashColor: Colors.red,
                child: Text("Flat Button"),
              ),
              TextButton(
                onPressed: (){
                  print("Flat Button Click");
                },
                child: Text("Flat Button"),
              ),
              GestureDetector(
                onTap: (){

                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.red, Colors.blue],
                        begin: FractionalOffset(0.0, 0.0),
                        end: FractionalOffset(0.5, 0.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  child: Text("use by gradient colors",style: TextStyle(fontSize:19.0,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              ),
              RaisedButton(
                onPressed: (){
                  print("RaisedButton Click");
                },
                color: Colors.blue,
                textColor: Colors.white,
                splashColor: Colors.red,
                child: Text("Raised Button"),
              ),
              ElevatedButton(
                onPressed: (){
                  print("Elevated Button Click");
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  padding: EdgeInsets.all(15.0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                child: Text("Elevated Button"),
              ),
              SizedBox(height: 50.0,),
              InkWell(
                onTap: (){},
                child: Text("Ink Well"),
              ),
              IconButton(
                onPressed: (){},
                iconSize: 50.0,
                icon: Icon(Icons.star),
              ),
              GestureDetector(
                onTap: (){
                  print("Container Click");
                },
                child: Image.asset("img/img_car.jpg",width: 100.0,),
              ),
              OutlinedButton(
                style: ButtonStyle(
                  side:MaterialStateProperty.all(BorderSide(
                      color: Colors.black87,
                      width: 5.0,
                      style: BorderStyle.solid
                  )),),
                onPressed: (){},
                child:Text("Outline Button "),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
