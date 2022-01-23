import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(hintText: 'Phone number'),
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: 'otp code'),
            ),
          ],
        ),
      ),
    );
  }
}
