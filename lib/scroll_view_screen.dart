import 'package:flutter/material.dart';

class ScrollViewScreen extends StatelessWidget {
  const ScrollViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scroll Lession'),
      ),
      body: ListView(
        children: List.generate(10, (index) {
          return Container(
            height: 200,
            width: 400,
            child: Image.network('https://cdn1.dotesports.com/wp-content/uploads/2021/09/13060218/narutoooh.jpg'),
          );
        }),
      ),
    );
  }
}
