import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Email'),
            ),
            TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Password')),
            ElevatedButton(onPressed: () {}, child: const Text('Login'))
          ],
        ),
      ),
    );
  }
}
