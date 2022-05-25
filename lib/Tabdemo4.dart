import 'package:flutter/cupertino.dart';

class Tabdemo4 extends StatefulWidget {

  @override
  State<Tabdemo4> createState() => _Tabdemo4State();
}

class _Tabdemo4State extends State<Tabdemo4> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text("this tab is 4"),
        ],
      ),
    );
  }
}
