import 'package:flutter/material.dart';

class ExpandedFlexibleExample extends StatefulWidget {

  @override
  State<ExpandedFlexibleExample> createState() => _ExpandedFlexibleExampleState();
}

class _ExpandedFlexibleExampleState extends State<ExpandedFlexibleExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded-Flexible"),
      ),
      body: Column(
        children: [

          // Expanded(
          //   child: Container(
          //     color: Colors.green,
          //     child: Container(
          //       child: ListView(),
          //     ),
          //   ),
          // ),
          //
          // Container(
          //   height: 60.0,
          //   color: Colors.red,
          // )
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 100.0,
              color: Colors.blue,
            ),
         ),
        ],
      ),
    );
  }
}
