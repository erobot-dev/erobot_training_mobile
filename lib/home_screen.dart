import 'package:erobot_training/calculator.dart';
import 'package:erobot_training/calculator_homework.dart';
import 'package:erobot_training/light_homework.dart';
import 'package:erobot_training/test_get_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> listScreen = [
      LightHomeWork(),
      Calculator(),
      TestGetWidget(),
      CalculatorHomeWork(),
    ];
    List<String> labels = [
      'Light HomeWork',
      'Calculator',
      'Test Get Widget',
      'Calculator Homework',
    ];
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
        title: Text('Home'),
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
          children: List.generate(
            listScreen.length,
            (index) => buildTextButton(
              context,
              screen: listScreen[index],
              label: labels[index],
            ),
          ),
        ),
      ),
    );
  }

  TextButton buildTextButton(
    BuildContext context, {
    required Widget screen,
    required String label,
  }) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Text(label),
    );
  }
}
