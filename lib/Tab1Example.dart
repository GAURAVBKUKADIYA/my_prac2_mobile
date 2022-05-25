import 'package:flutter/cupertino.dart';

class Tab1Example extends StatefulWidget {

  @override
  _Tab1ExampleState createState() => _Tab1ExampleState();
}

class _Tab1ExampleState extends State<Tab1Example> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text("I am Tab 1")
        ],
      ),
    );
  }
}
