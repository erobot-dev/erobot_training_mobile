import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class TestGetWidget extends StatelessWidget {
  const TestGetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Widget'),
      ),
      body: Center(
        child: Column(
          children: [
            GFButton(
              onPressed: () {},
              text: "primary",
            ),
            GFButton(
              onPressed: () {},
              text: "primary",
              color: GFColors.DARK,
              shape: GFButtonShape.pills,
            ),
          ],
        ),
      ),
    );
  }
}
