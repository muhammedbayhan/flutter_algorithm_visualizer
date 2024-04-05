import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  const TextInputWidget(
      {super.key, required this.controller, required this.labelText, required this.icon});
  final TextEditingController controller;
  final String labelText;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.phone,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: icon,
        border: const OutlineInputBorder(),
        
      ),
    );
  }
}
