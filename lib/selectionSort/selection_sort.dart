import 'package:flutter/material.dart';
import 'package:flutter_algorithm_visualizer/resources/paddings.dart';

class SelectionSort extends StatefulWidget {
  const SelectionSort({super.key});

  @override
  State<SelectionSort> createState() => _SelectionSortState();
}

class _SelectionSortState extends State<SelectionSort> {
  void selectionSort() {
    List<int> array = [77, 66, 99, 33, 22, 44, 55, 11, 88];
    int temp;
    int min;

    for (var i = 0; i < array.length; i++) {
      min=i;
      for (var j = i; j < array.length; j++) {
        if (array[j]<array[min]) {
          min=j;
        }
      }
      temp=array[i];
      array[i]=array[min];
      array[min]=temp;

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  const Text("Selection Sort"),),
      body: Padding(
        padding: AppPaddings.horizontal16,
        child: Column(children: [
          Text("Merhaba"*100)
        ],),
      ),
    );
  }
}
