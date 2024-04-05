import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_algorithm_visualizer/widgets/TextInputWidget.dart';

class A1 extends StatefulWidget {
  A1({super.key});

  @override
  State<A1> createState() => _A1State();
}

class _A1State extends State<A1> {
  final TextEditingController _controller1 = TextEditingController();

  final TextEditingController _controller2 = TextEditingController();

  int _result = 0;

  int sum() {
    //Write the code to compute the sum of two numbers.

    setState(() {});
    int a = int.parse(_controller1.text);
    int b = int.parse(_controller2.text);
    return _result = a + b;
  }

  int square() {
    //Write the algorithm and flowchart for a program that displays the sum of squares of two numbers entered by the user.
    setState(() {});
    int a = int.parse(_controller1.text);
    int b = int.parse(_controller2.text);
    return _result = a * a + b * b;
  }

  int xSumY() {
    //The sum of numbers from x to y
    setState(() {});
    _result = 0;
    int a = int.parse(_controller1.text);
    int b = int.parse(_controller2.text);
    for (var i = a; i <= b; i++) {
      _result = _result + i;
    }
    return _result;
  }

  int factorial() {
    // Finding the factorial of the entered number.
    setState(() {});
    _result = 1;
    int a = int.parse(_controller1.text);

    for (var i = a; i > 1; i--) {
      _result = _result * i;
    }
    return _result;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Operations"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Column(
          children: [
            Text(
              _result.toString(),
              style: TextStyle(fontSize: 54),
            ),
            TextInputWidget(
              icon: const Icon(Icons.numbers),
              controller: _controller1,
              labelText: "Number 1",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextInputWidget(
                icon: const Icon(Icons.numbers),
                controller: _controller2,
                labelText: "Number 2",
              ),
            ),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                children: [
                  IconButton(
                      onPressed: () {
                        sum();
                      },
                      icon: Icon(Icons.add)),
                  IconButton(
                      onPressed: () {
                        square();
                      },
                      icon: Icon(Icons.square)),
                  IconButton(
                      onPressed: () {
                        xSumY();
                      },
                      icon: Icon(Icons.format_list_numbered)),
                  IconButton(
                      onPressed: () {
                        factorial();
                      },
                      icon: Icon(Icons.error)),
                            IconButton(
                      onPressed: () {
                        factorial();
                      },
                      icon: Icon(Icons.kebab_dining_outlined)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
