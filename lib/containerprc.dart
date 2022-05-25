import 'package:flutter/material.dart';

class containerprc extends StatefulWidget {

  @override
  _containerprcState createState() => _containerprcState();
}

class _containerprcState extends State<containerprc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("how applay contaier"),
      ),
      body: Center(
        child: Container(
          width:  MediaQuery.of(context).size.width,
          height: 500.0,
          color: Colors.amber,
          child:Column(
            children: [
              Row(
                children: [
                  Text("hello flutter"),
                  Text("hello world"),
                  Text("data"),
                ],
              ),
              Row(
                children: [
                  Text("hello flutter",style: TextStyle(
                  fontSize:30.0,
                    color: Colors.white,
                    fontWeight:FontWeight.w600,
                    letterSpacing: 7.0,
                    backgroundColor: Colors.black,

                  )),


                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
