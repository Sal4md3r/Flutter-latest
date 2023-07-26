import 'package:flutter/material.dart';

class AnimatedText extends StatefulWidget {
  const AnimatedText({super.key});

  @override
  State<AnimatedText> createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: AnimatedSwitcher(
              transitionBuilder: (child, animation) {
                return ScaleTransition(
                  scale: animation,
                  child: child,
                );
              },
              duration: const Duration(milliseconds: 200),
              child: Text(
                _counter.toString(),
                key: ObjectKey(
                  _counter,
                ),
                style: const TextStyle(
                  fontSize: 50,
                  color: Colors.black38,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _counter++;
          setState(() {});
        },
      ),
    );
  }
}
