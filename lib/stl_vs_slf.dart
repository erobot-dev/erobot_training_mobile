import 'package:flutter/material.dart';

class StateFullLession extends StatefulWidget {
  const StateFullLession({Key? key}) : super(key: key);

  @override
  _StateFullLessionState createState() => _StateFullLessionState();
}

// State = data : string , boolean, int, ....

class _StateFullLessionState extends State<StateFullLession> {
  late int counter;
  late bool on;

  @override
  void initState() {
    counter = 0;
    on = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String lightOn =
        'https://thumbs.dreamstime.com/b/glowing-light-bulb-dark-creativity-inspiration-concept-glowing-light-bulb-dark-creativity-inspiration-concept-ideas-99770959.jpg';
    String lightOff =
        'https://contentgrid.thdstatic.com/hdus/en_US/DTCCOMNEW/fetch/NexGen/ContentPage/standard-light-bulb.png';

    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('StateFul Test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.network(
                on ? lightOn : lightOff,
              ),
            ),
            Text('counter : $counter'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
            // increment + 1 : counter = counter + 1
            // isOdd = counter % 2 == 0 ? false : true;
            if (counter % 2 == 0)
              on = false;
            else
              on = true;
          });
          print(counter);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

// ================================================

class StateLessLession extends StatelessWidget {
  const StateLessLession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int counter = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Test'),
      ),
      body: Center(
        child: Text('counter : $counter'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++; // increment + 1 : counter = counter + 1
          print(counter);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
