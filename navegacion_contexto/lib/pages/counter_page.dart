import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          backgroundColor: Colors.amberAccent,
        ),
        body: const Center(
          child: Text("Counter"),
        ),
      ),
      onWillPop: () {
        print('Esto se ejecuta');
        return Future.value(false);
      },
    );
  }
}
