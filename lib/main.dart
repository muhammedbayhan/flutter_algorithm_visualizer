import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_algorithm_visualizer/resources/color.dart';
import 'package:flutter_algorithm_visualizer/resources/typograhpy.dart';
import 'package:flutter_algorithm_visualizer/selectionSort/selection_sort.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Algorithm Visualizer',
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        scaffoldBackgroundColor: AppColor.fontWhite,
        appBarTheme:  AppBarTheme(
            titleTextStyle: CustomTypography.heading1.copyWith(color: AppColor.fontDark),
            elevation: 0,
            color: AppColor.fontWhite),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SelectionSort(),
    );
  }
}
