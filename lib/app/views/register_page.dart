import 'package:login_register_with_firebase/app/widgets/custom_button.dart';
import 'package:login_register_with_firebase/app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() {
    return _RegisterPageState();
  }
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService _authService = AuthService();

  void register() async {
    var user = await _authService.register(
      emailController.text,
      passwordController.text,
    );

    if (user != null) {
      Navigator.pushReplacementNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFieldCustom(emailController, false, "Email"),
            TextFieldCustom(passwordController, true, "Password"),
            const SizedBox(height: 20),
            ButtonCustom(title: "Register", onPressed: register),
          ],
        ),
      ),
    );
  }
}
