import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmailExample extends StatefulWidget {

  @override
  State<EmailExample> createState() => _EmailExampleState();
}

class _EmailExampleState extends State<EmailExample> {

  TextEditingController _mail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("EmailExample"),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(10.0),

        child: Column(
          children: [
            Text("mail"),
            TextField(
              controller: _mail,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            ElevatedButton(
              onPressed: (){
                var mail = _mail.text.toString();
                launch( "mailto://"+mail);
              },
              child: Text("mail"),
            ),
          ],
        ),
      ),
    );
  }
}
