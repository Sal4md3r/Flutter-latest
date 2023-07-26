import 'package:flutter/material.dart';

class KeyboardTypesPage extends StatelessWidget {
  const KeyboardTypesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              label: Text('Email'),
              border: OutlineInputBorder(),
            ),
            textInputAction: TextInputAction.search,
          ),
          const SizedBox(height: 20),
          const TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              label: Text('Phone'),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          const TextField(
            keyboardType: TextInputType.numberWithOptions(
              decimal: false,
              signed: false,
            ),
            decoration: InputDecoration(
              label: Text('Number'),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            autocorrect: false,
            keyboardType: TextInputType.name,
            enableSuggestions: false,
            decoration: InputDecoration(
              label: const Text('Only names'),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1),
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            textInputAction: TextInputAction.search,
            onSubmitted: (_) {
              print('Se esta buscando :3');
            },
          ),
        ],
      ),
    );
  }
}
