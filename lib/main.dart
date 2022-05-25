import 'package:flutter/material.dart';




import 'BankClone.dart';
import 'BottomNavigationdemo.dart';
import 'BottomSheetExample.dart';
import 'Drawerdemo.dart';

import 'ExpandedFlexibleExample.dart';
import 'FacebooKLoginPage.dart';
import 'FlutterTostDemo.dart';
import 'LoginRegistrationDemo.dart';
import 'SQLite.dart';
import 'SharePlus.dart';
import 'SherdPrefrenceDemo2.dart';
import 'SherdRefrenceDemo.dart';
import 'ShoppingSharedPreferences.dart';
import 'StackDemo.dart';
import 'Statedemo.dart';
import 'Whatsapp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MY DEMO START',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: StackDemo()
    );
  }
}

