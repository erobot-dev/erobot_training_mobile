import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorHomeWork extends StatefulWidget {
  const CalculatorHomeWork({Key? key}) : super(key: key);

  @override
  _CalculatorHomeWorkState createState() => _CalculatorHomeWorkState();
}

class _CalculatorHomeWorkState extends State<CalculatorHomeWork> {
  late String equation;
  late double result;
  @override
  void initState() {
    equation = '0';
    result = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildInputNumber(),
          Divider(thickness: 2),
          buildInputButtons(),
        ],
      ),
    );
  }

  Widget buildInputButtons() {
    Color numberColor = Colors.grey[700]!;
    Color operatorColor = Colors.blue;
    return Container(
      width: double.infinity,
      child: Wrap(
        children: [
          Row(
            children: [
              buildButton(
                label: 'C',
                color: Colors.red,
                onTap: () {
                  setState(() {
                    equation = '0';
                    result = 0;
                  });
                },
              ),
              buildButton(
                  label: '⌫',
                  color: operatorColor,
                  onTap: () {
                    if (equation.length == 1)
                      setState(() {
                        equation = '0';
                      });
                    else
                      setState(() {
                        equation = equation.substring(0, equation.length - 1);
                      });
                  }),
              buildButton(label: '÷', color: operatorColor),
              buildButton(label: 'x', color: operatorColor),
            ],
          ),
          Row(
            children: [
              buildButton(label: '7', color: numberColor),
              buildButton(label: '8', color: numberColor),
              buildButton(label: '9', color: numberColor),
              buildButton(label: '-', color: operatorColor),
            ],
          ),
          Row(
            children: [
              buildButton(label: '4', color: numberColor),
              buildButton(label: '5', color: numberColor),
              buildButton(label: '6', color: numberColor),
              buildButton(label: '+', color: operatorColor),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Row(
                      children: [
                        buildButton(label: '1', color: numberColor),
                        buildButton(label: '2', color: numberColor),
                        buildButton(label: '3', color: numberColor),
                      ],
                    ),
                    Row(
                      children: [
                        buildButton(label: '.', color: numberColor),
                        buildButton(label: '0', color: numberColor),
                        buildButton(label: '00', color: numberColor),
                      ],
                    ),
                  ],
                ),
              ),
              buildButton(
                label: '=',
                color: Colors.red,
                height: 80 * 2,
                onTap: () {
                  Parser parser = Parser();
                  Expression exp = parser.parse(equation); // parse equation to Expression
                  ContextModel contextModel = ContextModel();
                  setState(() {
                    result = exp.evaluate(EvaluationType.REAL, contextModel);
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildButton({
    required String label,
    required Color color,
    double? height,
    Function()? onTap,
  }) {
    var writeEquation = () {
      if (equation == '0') {
        setState(() {
          equation = label;
        });
      } else {
        setState(() {
          equation += label;
        });
      }
    };

    return Expanded(
      child: InkWell(
        onTap: onTap ?? writeEquation,
        child: Ink(
          height: height ?? 80, // if(heigh == null) heith = 80
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
            color: color,
            border: Border.all(color: Colors.white, width: 0.5),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container buildInputNumber() {
    return Container(
      padding: EdgeInsets.only(right: 16, top: 24),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            equation,
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 32,
            ),
          ),
          SizedBox(height: 24),
          Text(
            result.toString(),
            textAlign: TextAlign.end,
            style: TextStyle(fontSize: 48),
          ),
        ],
      ),
    );
  }
}
