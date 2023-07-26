import 'package:flutter/material.dart';
import 'package:navegacion_contexto/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
    ).then(
      (_) {
        Navigator.pushReplacementNamed(context, Routes.menuPage);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
