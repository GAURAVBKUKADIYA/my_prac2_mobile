import 'package:flutter/material.dart'
    '';

class TextWidgetExample extends StatefulWidget {

  @override
  _TextWidgetExampleState createState() => _TextWidgetExampleState();
}

class _TextWidgetExampleState extends State<TextWidgetExample> {
  var name="ABC";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Widget Example"),
      ),
      body: Center(
        child: Text("Hello $name World!",style: TextStyle(
            fontSize: 30.0,
         color: Colors.red.shade600,
         fontWeight: FontWeight.w800,
         letterSpacing: 5.0,
         wordSpacing: 15.0,
         backgroundColor: Colors.yellow.shade200,
         fontStyle: FontStyle.italic
         // color: Color(0xff00695c)
        )),
      ),
    );
  }
}
