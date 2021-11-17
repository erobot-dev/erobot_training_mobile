import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            print('Go Back');
          },
          icon: Icon(
            Icons.face,
          ),
        ),
        title: Text('Testing'),
        actions: [
          IconButton(
            onPressed: () {
              print('Searching');
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.horizontal,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/test-image.jpg'),
                ),
              ),
            ),
            Text('E-Robot'),
            Container(
              height: 200,
              width: 200,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/test-image.jpg'),
                ),
              ),
            ),
            Text('E-Robot'),
            Container(
              height: 200,
              width: 200,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/test-image.jpg'),
                ),
              ),
            ),
            Text('E-Robot'),
            Container(
              height: 200,
              width: 200,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/test-image.jpg'),
                ),
              ),
            ),
            Text('E-Robot'),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone),
                Text('Phone'),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.map),
                Text('Map'),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.share),
                Text('Share'),
              ],
            ),
          ],
        ),
      ),
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
