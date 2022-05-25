import 'package:flutter/material.dart';

import 'Tab1Example.dart';
import 'Tab2Example.dart';

class TabBarExample extends StatefulWidget {

  @override
  _TabBarExampleState createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [

          ],
          title: Text("Tabs"),
          bottom: TabBar(
            labelColor: Colors.indigo,
            indicatorColor: Colors.red,
            tabs: [
              Tab(
                icon: Icon(Icons.message),
              ),
              Tab(
                child: Text("Status"),
                icon: Icon(Icons.message),
              ),
              Tab(
                child: Text("Calls"),
                icon: Icon(Icons.message),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Tab1Example(),
            Tab2Example(),
            Tab1Example(),
            // SingleChildScrollView(
            //   child: Column(
            //     children: [
            //       Text("Tab 1")
            //     ],
            //   ),
            // ),
            // SingleChildScrollView(
            //   child: Column(
            //     children: [
            //       Text("Tab 2")
            //     ],
            //   ),
            // ),
            // SingleChildScrollView(
            //   child: Column(
            //     children: [
            //       Text("Tab 3")
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
