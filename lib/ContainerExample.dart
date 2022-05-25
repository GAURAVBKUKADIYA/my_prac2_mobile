import 'package:flutter/material.dart';

class ContainerExample extends StatefulWidget {

  @override
  _ContainerExampleState createState() => _ContainerExampleState();
}

class _ContainerExampleState extends State<ContainerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Example"),
      ),
      body: Center(
        child: Container(
          //width: 200.0,
          width: MediaQuery.of(context).size.width,
          height: 200.0,
         margin: EdgeInsets.all(15.0),
        alignment: Alignment.center,
        // padding: EdgeInsets.only(top: 25.0,left: 50.0),
         // height: MediaQuery.of(context).size.height * 0.5,
          child: Text("Hello World!"),
         // transform: Matrix4.rotationZ(0.6),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: Colors.blue,width: 10.0),
            boxShadow: [
              BoxShadow(color: Colors.yellow.shade600,offset: Offset(10.0,10.0))
            ]
          ),
          // child: Column(
          //   children: [
          //     Row(
          //       children: [
          //         Text("Hello World!"),
          //         Text("Hello World!"),
          //
          //       ],
          //     )
          //   ],
          // )
        ),
      ),
    );
  }
}
