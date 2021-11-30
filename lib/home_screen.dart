import 'package:erobot_training/calculator.dart';
import 'package:erobot_training/light_homework.dart';
import 'package:flutter/material.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LightHomeWork();
                    },
                  ),
                );
              },
              child: Text('Light Homework'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CalculatorHomeWork();
                    },
                  ),
                );
              },
              child: Text('Calculator home work'),
            ),
          ],
        ),
      ),
    );
  }
}
