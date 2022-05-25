import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class SharePlus extends StatefulWidget {


  @override
  State<SharePlus> createState() => _SharePlusState();
}

class _SharePlusState extends State<SharePlus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("SharePlus"),
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(35),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: (){
                  Share.share("Sample Share Text");
                },
                child: Text("Share file"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
