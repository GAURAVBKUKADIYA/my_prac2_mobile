import 'package:flutter/material.dart';

class OrizentlelistviewExample extends StatefulWidget {

  @override
  _OrizentlelistviewExampleState createState() => _OrizentlelistviewExampleState();
}

class _OrizentlelistviewExampleState extends State<OrizentlelistviewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("OrizentlelistviewExample"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 15.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300.0,
                        margin: EdgeInsets.all(15.0),
                        color: Colors.red,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300.0,
                        margin: EdgeInsets.all(15.0),
                        color: Colors.red,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300.0,
                        margin: EdgeInsets.all(15.0),
                        color: Colors.red,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300.0,
                        margin: EdgeInsets.all(15.0),
                        color: Colors.red,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
