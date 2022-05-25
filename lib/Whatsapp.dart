import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_prac2_mobile/Chats.dart';
import 'package:my_prac2_mobile/Stutas.dart';
import 'package:my_prac2_mobile/Calls.dart';

class Tabbardemo extends StatefulWidget {


  @override
  State<Tabbardemo> createState() => _TabbardemoState();
}

class _TabbardemoState extends State<Tabbardemo> with SingleTickerProviderStateMixin {

  TabController _tabController;
  var position=0;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
    _tabController.addListener(getTabIndex);
  }

  // if(i<=10)
  // {
  //   Icons.agriculture_sharps
  // sdf
  // sdf
  // sdf
  // }
  // else
  // {
  //   false
  // }
  //
  // (i<=10)?jhshbhdfhb:sfdsg

  void getTabIndex() {
    var index = _tabController.index;
    setState(() {
      position=index;
    });
   // print("Current Index : "+index.toString());
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  // if(position==0)
  // {
  //   Colors.red
  // }
  // else if(position==1)
  // {
  //   Colors.blue
  // }
  // else
  // {
  //   colors.green
  // }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: (position==0)?Colors.red:(position==1)?Colors.blue:Colors.green,
          title: Text("Whatsapp"),
          actions: [
            // Builder(builder: (context) {
            //   final index = DefaultTabController
            //       .of(context)
            //       .index;
            // }),
            // IconButton(
            //   icon: Icon(
            //     Icons.search,
            //     color: Colors.white,
            //   ),
            // ),
            (position==0)?PopupMenuButton(
              itemBuilder: (context) =>
              [
                PopupMenuItem(
                  child: Text("New group"),
                ),
                PopupMenuItem(
                  child: Text("New broadcast"),
                ),
                PopupMenuItem(
                  child: Text("Linked devices"),
                ),
                PopupMenuItem(
                  child: Text("Starred messages"),
                ),
                PopupMenuItem(
                  child: Text("Payments"),
                ),
                PopupMenuItem(
                  child: Text("Settings"),
                ),
              ],
            ):(position==1)?PopupMenuButton(
              itemBuilder: (context) =>
              [
                PopupMenuItem(
                  child: Text("status group"),
                ),

              ],
            ):PopupMenuButton(
              itemBuilder: (context) =>
              [
                PopupMenuItem(
                  child: Text("Call group"),
                ),
              ],
            )
          ],

          bottom: TabBar(
            controller: _tabController,
            // onTap: (index) {
            //   print("Current Index : "+index.toString());
            // },
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(20), // Creates border
                color: Colors.indigo), //Change background color from here
          //  isScrollable: true,
            tabs: [
              Tab(
                child: Text("chats"),
              ),
              Tab(
                child: Text("stutas"),
              ),
              Tab(
                child: Text("calls"),
              ),
            ],
          ),
        ),
        body:
        TabBarView(
          controller: _tabController,

          children: [
            Tabdemo1(),
            Tabdemo2(),
            Tabdemo3(),
          ],
        ),
       floatingActionButton:

       (position==0)? FloatingActionButton(
            child:Icon(Icons.camera)
        ):

       (position==1)?FloatingActionButton(
           child:Icon(Icons.check_box)

       ): FloatingActionButton(
           child:Icon(Icons.message)
       ),
      ),
    );
  }
}

