import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_algorithm_visualizer/resources/paddings.dart';
import 'package:flutter_algorithm_visualizer/widgets/ErrorButtonWidget.dart';
import 'package:flutter_algorithm_visualizer/widgets/PrimaryButtonWidget.dart';

import '../widgets/RadiusContainerWidget.dart';

class SelectionSort extends StatefulWidget {
  const SelectionSort({super.key});

  @override
  State<SelectionSort> createState() => _SelectionSortState();
}

class _SelectionSortState extends State<SelectionSort> {
  List<int> array = [5, 3, 8, 4, 2, 7, 1, 6, 9];
  bool isSortingPaused = false;
  int currentIndex = 0;

  void selectionSort() async {
    int temp;
    int min;

    for (var i = currentIndex; i < array.length; i++) {
      if (isSortingPaused) {
        return;
      }
      min = i;
      for (var j = i; j < array.length; j++) {
        if (array[j] < array[min]) {
          min = j;
        }
      }
      await Future.delayed(Duration(seconds: 1)); // Delay for 1 second
      temp = array[i];
      array[i] = array[min];
      array[min] = temp;
      setState(() {
        currentIndex = i + 1;
      });
    }
  }

  void handlePause() {
    setState(() {
      isSortingPaused = true;
    });
  }

  void handleContinue() {
    setState(() {
      isSortingPaused = false;
    });
    selectionSort();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Selection Sort"),
      ),
      body: Padding(
          padding: AppPaddings.horizontal16,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: GridView.builder(
                  itemCount: array.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) => RadiusContainerWidget(
                    text: array[index].toString(),
                  ),
                ),
              ),
              PrimaryButtonWidget(
                  text: "Start",
                  function: () {
                    handleContinue();
                  }),
              ErrorButtonWidget(
                text: "Stop",
                function: () {
                  handlePause();
                },
              )
            ],
          )),
    );
  }
}
