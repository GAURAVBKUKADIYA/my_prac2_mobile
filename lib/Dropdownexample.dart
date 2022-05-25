import 'package:flutter/material.dart';

class Dropdownexample extends StatefulWidget {

  @override
  _DropdownexampleState createState() => _DropdownexampleState();
}

class _DropdownexampleState extends State<Dropdownexample> {

  var select="i1";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdownexample"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
          //     <select>
          //     <option value="i1">Item 1</option>
          // <option value="i1">Item 1</option>
          // <option value="i1">Item 1</option>
          // <option value="i1">Item 1</option>
          //   <option value="i1">Item 1</option>
          //   </select>
              DropdownButton(
                value: select,
                onChanged: (val)
                {
                  setState(() {
                    select=val;
                  });
                },
                items: [
                  DropdownMenuItem(
                    child: Text("Item 1"),
                    value: "i1",
                  ),
                  DropdownMenuItem(
                    child: Text("Item 2"),
                    value: "i2",
                  ),
                  DropdownMenuItem(
                    child: Text("Item 3"),
                    value: "i3",
                  ),
                  DropdownMenuItem(
                    child: Text("Item 4"),
                    value: "i4",
                  ),
                ],
              ),
              RaisedButton(
                onPressed: (){
                  print("Selected Item : "+select);
                },
                child: Text("Submit"),
              )



            ],
          ),
        ),
      ),
    );
  }
}
