import "package:flutter/material.dart";

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _value = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  RotatedBox(
                    quarterTurns: 3,
                    child: Slider(
                      label: _value.toString(),
                      value: _value,
                      divisions: 100,
                      min: 10,
                      max: 100,
                      onChanged: (val) {
                        setState(() {
                          _value = val.floorToDouble();
                        });
                      },
                    ),
                  ),
                  const Text('Lol')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
