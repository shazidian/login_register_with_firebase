// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  late TextEditingController controller;
  bool obsecure = false;
  String input;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obsecure,
      decoration: InputDecoration(labelText: input),
    );
  }

  TextFieldCustom(this.controller, this.obsecure, this.input);
}
