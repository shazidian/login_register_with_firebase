// ignore_for_file: use_key_in_widget_constructors, prefer_typing_uninitialized_variables

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
