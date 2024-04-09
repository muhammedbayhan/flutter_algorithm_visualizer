import 'package:flutter/material.dart';
import 'package:flutter_algorithm_visualizer/resources/color.dart';
import 'package:flutter_algorithm_visualizer/resources/typograhpy.dart';

class RadiusContainerWidget extends StatelessWidget {
  const RadiusContainerWidget({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColor.fontLight),
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.height * 0.15,
      child: Center(
          child: Text(
        text,
        style: CustomTypography.paragraphLarge
            .copyWith(color: AppColor.fontWhite),
      )),
    );
  }
}