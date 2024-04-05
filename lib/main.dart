import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_algorithm_visualizer/100/1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 247, 1),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(color: Color.fromRGBO(255, 255, 247, 1),fontSize: 24,fontWeight: FontWeight.w500),
          centerTitle: true,elevation: 0,color: Colors.indigo),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: A1()
    );
  }
}
