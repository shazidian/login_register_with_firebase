import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final title;
  final VoidCallback onPressed;

  ButtonCustom({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(title));
  }
}
