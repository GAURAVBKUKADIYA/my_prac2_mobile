import 'package:flutter/material.dart';

class BottomSheetExample extends StatefulWidget {


  @override
  State<BottomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

