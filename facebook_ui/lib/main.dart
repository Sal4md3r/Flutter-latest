import 'package:flutter/material.dart';
import 'facebook_ui/facebook_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FacebookUi(),
      theme: ThemeData(
        fontFamily: 'Nunito',
      ),
    );
  }
}
