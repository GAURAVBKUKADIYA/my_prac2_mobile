import 'package:flutter/material.dart';

class CardExample extends StatefulWidget {
  @override
  _CardExampleState createState() => _CardExampleState();
}

class _CardExampleState extends State<CardExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Example"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                width:MediaQuery.of(context).size.width,
                height: 200.0,
                child: Card(
                  color: Colors.yellow.shade50,
                  elevation: 10.0,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text("Hello",style: TextStyle(color: Colors.amber.shade900,fontSize: 25.0)),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                width:MediaQuery.of(context).size.width,
                height: 200.0,
                child: Card(
                  color: Colors.yellow.shade50,
                  elevation: 10.0,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text("Hello",style: TextStyle(color: Colors.amber.shade900,fontSize: 25.0)),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                width:MediaQuery.of(context).size.width,
                height: 200.0,
                child: Card(
                  color: Colors.yellow.shade50,
                  elevation: 10.0,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Hello",style: TextStyle(color: Colors.amber.shade900,fontSize: 25.0)),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("fluuter use by card",style: TextStyle(color: Colors.blue.shade400,fontSize: 30.0)),
                          ),
                          Text("fluuter use by card",style: TextStyle(color: Colors.blue.shade400,fontSize: 30.0)),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text("fluuter use by card",style: TextStyle(color: Colors.blue.shade400,fontSize: 30.0)),
                          ),
                        ],
                      )
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                width:MediaQuery.of(context).size.width,
                height: 200.0,
                child: Card(
                  color: Colors.yellow.shade50,
                  elevation: 10.0,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text("Hello",style: TextStyle(color: Colors.amber.shade900,fontSize: 25.0)),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                width:MediaQuery.of(context).size.width,
                height: 200.0,
                child: Card(
                  color: Colors.yellow.shade50,
                  elevation: 10.0,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text("Hello",style: TextStyle(color: Colors.amber.shade900,fontSize: 25.0)),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                width:MediaQuery.of(context).size.width,
                height: 200.0,
                child: Card(
                  color: Colors.yellow.shade50,
                  elevation: 10.0,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text("Hello",style: TextStyle(color: Colors.amber.shade900,fontSize: 25.0)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
