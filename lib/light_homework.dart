import 'package:flutter/material.dart';

class LightHomeWork extends StatefulWidget {
  const LightHomeWork({Key? key}) : super(key: key);

  @override
  _LightHomeWorkState createState() => _LightHomeWorkState();
}

class _LightHomeWorkState extends State<LightHomeWork> {
  late int num;
  late bool on;

  @override
  void initState() {
    num = 0;
    on = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String lighton = 'assets/images/LED-ON.png';
    String lightoff = 'assets/images/LED-OFF.png';

    return Scaffold(
      backgroundColor: on ? Colors.amber : Colors.black,
      appBar: AppBar(
        title: Text('Light'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_arrow_left),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(50),
            width: 300,
            height: 300,
            child: Image.asset(
              on ? lighton : lightoff,
            ),
          ),
          Text(
            on ? 'OFF' : 'ON',
            style: TextStyle(color: on ? Colors.black : Colors.white),
          ),
          IconButton(
            color: on ? Colors.amber[200] : Colors.red[200],
            highlightColor: on ? Colors.amber[200] : Colors.red[200],
            splashColor: on ? Colors.amber[200] : Colors.red[200],
            onPressed: () {
              setState(() {
                on = !on;
              });
            },
            icon: Icon(Icons.light_mode),
          ),
        ],
      ),
    );
  }
}
