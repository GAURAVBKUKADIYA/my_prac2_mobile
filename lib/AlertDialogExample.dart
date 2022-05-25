import 'package:flutter/material.dart';

class AlertDialogExample extends StatefulWidget {

  @override
  State<AlertDialogExample> createState() => _AlertDialogExampleState();
}

class _AlertDialogExampleState extends State<AlertDialogExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){

            AlertDialog alert = AlertDialog(
              backgroundColor: Colors.yellow.shade200,
              contentPadding: EdgeInsets.all(15.0),
              title: Text("Warning"),
              content: Text("Are you sure?"),
              actions: [
                ElevatedButton(onPressed: (){}, child: Text("Yes")),
                ElevatedButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("No")),
              ],
            );

            showDialog(context: context, builder: (context){
              return alert;
            });


          },
          child: Text("Show"),
        ),
      ),
    );
  }
}
