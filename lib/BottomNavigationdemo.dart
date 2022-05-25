import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:my_prac2_mobile/GridViewExample.dart';
import 'package:my_prac2_mobile/ImageExample.dart';
import 'package:my_prac2_mobile/Paytm.dart';
import 'package:my_prac2_mobile/StackDemo.dart';

class BottomNavigationdemo extends StatefulWidget {


  @override
  State<BottomNavigationdemo> createState() => _BottomNavigationdemoState();
}

class _BottomNavigationdemoState extends State<BottomNavigationdemo> {

  var selected=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("BottomNavigationdemo"),
        ),

        backgroundColor: (selected==0)?Colors.purple:(selected==1)?Colors.amber:(selected==2)?Colors.blue:Colors.indigo,
      ),

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){},
      //   tooltip: 'Incrment',
      //   child: Icon(Icons.add),
      //   elevation: 25.0,
      //   backgroundColor: (selected==0)?Colors.red:(selected==1)?Colors.amber:(selected==2)?Colors.blue:Colors.indigo,
      // ),


        bottomNavigationBar: BottomAppBar(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 80.0,
            color: Colors.pinkAccent,
            child: Row(
              children: [
                Column(
                  children: [
                    IconButton(onPressed: (){
                      setState(() {
                        selected=0;
                      });
                    }, icon: Icon(Icons.home)),
                    Text("Home")
                  ],
                ),
                IconButton(onPressed: (){
                  setState(() {
                    selected=1;
                  });
                }, icon: Icon(Icons.home))
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(onPressed: () {}),


      // bottomNavigationBar: BottomAppBar(
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: (selected==0)?Colors.red:(selected==1)?Colors.amber:(selected==2)?Colors.white:Colors.indigo,
      //   selectedItemColor: Colors.purple,
      //   unselectedItemColor: Colors.blue,
      //   onTap: (index){
      //     setState(() {
      //       selected=index;
      //     });
      //   },
      //   currentIndex: selected,
      //   children:[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: ("Home")
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.person),
      //         label: ("About")
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings),
      //       label: ("Seetting")
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.logout),
      //         label: ("Logout")
      //     ),
      //   ],
      //
      // ),
      // body: (selected==0)?GridViewExample():(selected==1)?Paytm():(selected==2)?StackDemo():ImageExample(),
      body:SingleChildScrollView(
        child: ElevatedButton(
          child: Text("Open Shhet"),
          onPressed: (){
            showModalBottomSheet(
                context: context,
                builder: (context) =>
                    Center(
                      child:ElevatedButton(
                        child: Text("Close"),
                        onPressed: () =>Navigator.pop(context),

                      ),
                    ),
                   );
                },
           ),

           ),
       );
  }
}
