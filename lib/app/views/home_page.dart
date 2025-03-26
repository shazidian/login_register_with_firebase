// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            onPressed: () {
              AuthService().logout();
              Navigator.pushReplacementNamed(context, '/login');
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: const Center(child: Text('Yey! Haloo, selamat ya!')),
    );
  }
}
