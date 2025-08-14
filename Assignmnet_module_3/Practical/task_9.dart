import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SimpleCalculator(),
    debugShowCheckedModeBanner: false,
  ));
}

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({super.key});

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  String display = "";
  String fullExpression = ""; // To store the whole expression
  double num1 = 0;
  double num2 = 0;
  String operator = "";

  onNumberPress(String value) {
    setState(() {
      display += value;
      fullExpression += value;
    });
  }

  onOperatorPress(String op) {
    setState(() {
      if (display.isNotEmpty) {
        num1 = double.tryParse(display) ?? 0;
        operator = op;
        display = "";
        fullExpression += " $op ";
      }
    });
  }

  onEqualPress() {
    setState(() {
      num2 = double.tryParse(display) ?? 0;
      if (operator == "+") {
        display = (num1 + num2).toString();
      } else if (operator == "-") {
        display = (num1 - num2).toString();
      } else if (operator == "*") {
        display = (num1 * num2).toString();
      } else if (operator == "/") {
        display = num2 != 0 ? (num1 / num2).toString() : "Error";
      }
      fullExpression = display; // Replace expression with result
    });
  }

  onClearPress() {
    setState(() {
      display = "";
      fullExpression = "";
      num1 = 0;
      num2 = 0;
      operator = "";
    });
  }

  Widget buildButton(String text, {VoidCallback? onPressed, Color? color}) {
    return SizedBox(
      width: 70,
      height: 70,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? Colors.grey.shade200,
          shape: CircleBorder(),
          padding: EdgeInsets.zero,
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Simple Calculator"),
        backgroundColor: Colors.orange.shade200,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.all(20),
              child: Text(
                fullExpression,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 25.0, bottom: 20),
            child: Row(
              children: [
                buildButton("C", onPressed: onClearPress, color: Colors.red.shade200),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildButton("7", onPressed: () => onNumberPress("7")),
              buildButton("8", onPressed: () => onNumberPress("8")),
              buildButton("9", onPressed: () => onNumberPress("9")),
              buildButton("/", onPressed: () => onOperatorPress("/"), color: Colors.orange.shade200),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildButton("4", onPressed: () => onNumberPress("4")),
              buildButton("5", onPressed: () => onNumberPress("5")),
              buildButton("6", onPressed: () => onNumberPress("6")),
              buildButton("*", onPressed: () => onOperatorPress("*"), color: Colors.orange.shade200),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildButton("1", onPressed: () => onNumberPress("1")),
              buildButton("2", onPressed: () => onNumberPress("2")),
              buildButton("3", onPressed: () => onNumberPress("3")),
              buildButton("-", onPressed: () => onOperatorPress("-"), color: Colors.orange.shade200),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildButton("0", onPressed: () => onNumberPress("0")),
              buildButton(".", onPressed: () => onNumberPress(".")),
              buildButton("=", onPressed: onEqualPress, color: Colors.green.shade200),
              buildButton("+", onPressed: () => onOperatorPress("+"), color: Colors.orange.shade200),
            ],
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}