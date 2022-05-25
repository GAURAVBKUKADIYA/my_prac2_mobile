import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("About"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Item 1"),
          Text("Item 2"),
          Text("Item 3"),
          Row(
            children: [
              Text("Row 1"),
              Text("Row 2"),
              Column(
                children: [
                  Text("Col 1"),
                  Text("Col 2"),
                  Text("Col 3"),
                ],
              ),
              Text("Row 3"),
            ],
          ),
          Text("Item 4"),
          Text("Item 5"),
        ],
      ),
      // body: Center(
      //   child: Text("About Screen sdfsdf234546"),
      // ),
    );
  }
}
