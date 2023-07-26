import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  String? _valorLenguaje;
  String? _valorOpciones;

  @override
  void initState() {
    super.initState();

    //_valorLenguaje = 'flutter';
  }

  void _setValorOpciones(String? valor) {
    setState(() {
      _valorOpciones = valor ?? _valorOpciones;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Text('¿Cual es mejor?'),
              Radio<String>(
                value: 'Flutter',
                groupValue: _valorLenguaje,
                onChanged: (val) {
                  setState(() {
                    if (val != null) {
                      print('Este es el valor');
                      print(val);
                      _valorLenguaje = val;
                    }
                  });
                },
              ),
              const Text('Flutter'),
              Radio<String>(
                value: 'React',
                groupValue: _valorLenguaje,
                onChanged: (val) {
                  setState(() {
                    if (val != null) {
                      print('Este es el valor');
                      print(val);
                      _valorLenguaje = val;
                    }
                  });
                },
              ),
              const Text('React'),
              Radio<String>(
                value: 'Xamarin',
                groupValue: _valorLenguaje,
                onChanged: (val) {
                  setState(() {
                    if (val != null) {
                      print('Este es el valor');
                      print(val);
                      _valorLenguaje = val;
                    }
                  });
                },
              ),
              const Text('Xamarin'),
              const Divider(),
              const Text('¿Genéro?'),
              const Divider(),
              RadioListTile<String>(
                value: 'Hombre',
                groupValue: _valorOpciones,
                onChanged: _setValorOpciones,
                title: const Text('Hombre'),
              ),
              RadioListTile<String>(
                value: 'Mujer',
                groupValue: _valorOpciones,
                onChanged: _setValorOpciones,
                title: const Text('Mujer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
