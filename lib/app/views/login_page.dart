// ignore_for_file: use_build_context_synchronously, use_key_in_widget_constructors

import 'package:login_register_with_firebase/app/widgets/custom_button.dart';
import 'package:login_register_with_firebase/app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService _authService = AuthService();

  void login() async {
    var user = await _authService.login(
      emailController.text,
      passwordController.text,
    );

    if (user != null) {
      Navigator.pushReplacementNamed(context, '/home');
    }
  }

  void register() async {
    Navigator.pushReplacementNamed(context, '/register');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFieldCustom(emailController, false, "Email"),
            TextFieldCustom(passwordController, true, "Password"),
            const SizedBox(height: 20),
            ButtonCustom(title: "Login", onPressed: login),
            ButtonCustom(title: "Register", onPressed: register),
          ],
        ),
      ),
    );
  }
}
