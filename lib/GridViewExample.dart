import 'package:flutter/material.dart';

class GridViewExample extends StatefulWidget {

  @override
  _GridViewExampleState createState() => _GridViewExampleState();
}

class _GridViewExampleState extends State<GridViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0
        ),
        children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200.0,
                  alignment: Alignment.center,
                  child: Text("1",style: TextStyle(fontSize: 15.0),),
                  color: Colors.red,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200.0,
                  color: Colors.green,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200.0,
                  color: Colors.red,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200.0,
                  color: Colors.red,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200.0,
                  color: Colors.red,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200.0,
                  color: Colors.red,
                ),
        ],
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: GridView.count(
      //     crossAxisCount: 2,
      //     crossAxisSpacing: 10.0,
      //     mainAxisSpacing: 10.0,
      //     children: [
      //       Container(
      //         width: MediaQuery.of(context).size.width,
      //         height: 200.0,
      //         alignment: Alignment.center,
      //         child: Text("1"),
      //         color: Colors.red,
      //       ),
      //       Container(
      //         width: MediaQuery.of(context).size.width,
      //         height: 200.0,
      //         color: Colors.green,
      //       ),
      //       Container(
      //         width: MediaQuery.of(context).size.width,
      //         height: 200.0,
      //         color: Colors.red,
      //       ),
      //       Container(
      //         width: MediaQuery.of(context).size.width,
      //         height: 200.0,
      //         color: Colors.red,
      //       ),
      //       Container(
      //         width: MediaQuery.of(context).size.width,
      //         height: 200.0,
      //         color: Colors.red,
      //       ),
      //       Container(
      //         width: MediaQuery.of(context).size.width,
      //         height: 200.0,
      //         color: Colors.red,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
