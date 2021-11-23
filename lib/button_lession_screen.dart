import 'package:flutter/material.dart';

class ButtonLessionScreen extends StatelessWidget {
  const ButtonLessionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Lession'),
        actions: [
          IconButton(
            splashColor: Colors.red,
            highlightColor: Colors.amber.withOpacity(0.5),
            onPressed: () {
              print('Share');
            },
            icon: Icon(Icons.share),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              splashColor: Colors.red,
              highlightColor: Colors.amber.withOpacity(0.5),
              onPressed: () {
                print('Share');
              },
              icon: Icon(Icons.share),
            ),
            TextButton(
              onPressed: () => print('Hello world'),
              child: Text('Say Hello'),
            ),
            TextButton.icon(
              onLongPress: () {
                print('on long press');
              },
              onPressed: () => print('ldsjflsd'),
              icon: Icon(
                Icons.keyboard_arrow_left,
                size: 48,
              ),
              label: Text('Back'),
            ),
            GestureDetector(
              onTap: () => print('GestureDetector'),
              onDoubleTap: () => print('double tap'),
              child: Row(
                children: [
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: 24,
                  ),
                  Text('Go'),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
