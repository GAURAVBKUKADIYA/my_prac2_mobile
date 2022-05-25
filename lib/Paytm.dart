import 'package:flutter/material.dart';
import 'package:my_prac2_mobile/LIstviewexample.dart';
import 'package:my_prac2_mobile/Mxplayer.dart';

class Paytm extends StatefulWidget {

  @override
  _PaytmState createState() => _PaytmState();
}

class _PaytmState extends State<Paytm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paytm"),
        actions: [
          PopupMenuButton(
            onSelected: (value){
              if(value=="newgroup")
                {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>Mxplayer())
                  );
                }
              else if(value=="2")
                {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>LIstviewexample())
                  );
                }
              else if(value=="3")
              {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>LIstviewexample())
                );
              }
            },
            color: Colors.indigo,
            itemBuilder: (context) =>[
              PopupMenuItem(
                value: "newgroup",
                child: Text('New group',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),),
              ),
              PopupMenuItem(
                value: "2",
                child: Text('New broadcast',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              PopupMenuItem(
                value: "3",
                child: Text('Linked divices',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              PopupMenuItem(
                child: Text('Starred meassages',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              PopupMenuItem(
                child: Text('Payments',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              PopupMenuItem(
                child: Text('Settings',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ],
      ),
      body: Text("sac"),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              trailing: Icon(Icons.arrow_right_alt),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text("shopping"),
              trailing: Icon(Icons.shopping_cart),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.search),
              title: Text("search"),
              trailing: Icon(Icons.image_search),
            ),
          ],
        ),

      ),
    );
  }
}
