import 'package:flutter/material.dart';

class ColorPicker extends StatelessWidget {
  const ColorPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pop(
                context,
                Colors.primaries[index],
              );
            },
            child: Container(
              height: 70,
              color: Colors.primaries[index],
            ),
          );
        },
        itemCount: Colors.primaries.length,
      ),
    );
  }
}
