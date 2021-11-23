import 'package:erobot_training/button_lession_screen.dart';
import 'package:erobot_training/scroll_view_screen.dart';
import 'package:erobot_training/stl_vs_slf.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: ScrollViewScreen(),
      home: StateFullLession(),
      // home: StateLessLession(),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}



/*
status bar
app bar
body
navigation bar 

bottomsheet
drawer / end drawer

Text 
Container
Row : --- --- ----- -----
Column :
----
----
-----
----
----

Image
Scoll:
SingleChildScrollView
ListView 
PageView
GridView

*/
