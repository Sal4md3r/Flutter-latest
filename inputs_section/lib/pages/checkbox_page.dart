import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key});

  @override
  State<CheckboxPage> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  const Text(''' 
Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos 
y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las 
hojas "Letraset"
                    '''),
                  Checkbox(
                    value: _checked,
                    //tristate: true,
                    onChanged: (val) {
                      print('Este es el valor ${val}');
                      if (val != null) {
                        setState(() {
                          _checked = val;
                        });
                      }
                    },
                  ),
                  CheckboxListTile(
                    value: _checked,
                    controlAffinity: ListTileControlAffinity.leading,
                    visualDensity: VisualDensity.compact,
                    onChanged: (val) {
                      if (val != null) {
                        setState(() {
                          _checked = val;
                        });
                      }
                    },
                    title: const Text('Este es el texto titulo 4'),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _checked = !_checked;
                      });
                    },
                    child: Row(
                      children: [
                        Checkbox(
                          value: _checked,
                          fillColor: MaterialStateProperty.all(
                            Colors.blue,
                          ),
                          overlayColor: MaterialStateProperty.all(
                            Colors.red,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onChanged: (val) {
                            print('Este es el valor ${val}');
                            if (val != null) {
                              setState(() {
                                _checked = val;
                              });
                            }
                          },
                        ),
                        const Expanded(
                          child: Text('Esto es el texto 1'),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: _checked ? () {} : null,
                    child: const Text("Next"),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
