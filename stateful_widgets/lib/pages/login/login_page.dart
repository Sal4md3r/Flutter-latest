import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = '', _password = '';

  bool get _isValidEmail {
    return _email.contains("@");
  }

  bool get _isValidPassword {
    return _email.replaceAll(' ', '').length >= 5;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Email'),
            TextField(
              onChanged: (email) {
                _email = email;
                setState(() {});
              },
            ),
            const SizedBox(height: 30),
            const Text('Password'),
            TextField(
              onChanged: (password) {
                _password = password;
                setState(() {});
              },
            ),
            const SizedBox(height: 50),
            MaterialButton(
              child: const Text('Enviar'),
              color: Colors.blueAccent,
              onPressed: _isValidEmail && _isValidPassword ? () {} : null,
            )
          ],
        ),
      )),
    );
  }
}
