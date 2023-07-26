import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:navegacion_contexto/routes.dart';
import 'color_picker.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  Color _color = Colors.red;

  late List<PageData> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      PageData(
        name: Routes.loginPage,
        label: 'Ir al login',
        args: 'email@mail.com',
      ),
      PageData(
        name: Routes.counterPage,
        label: 'Ir al counter',
      ),
      PageData(
          name: Routes.colorPickerPage,
          label: 'Ir al color picker',
          onResult: (result) {
            if (result is Color) {
              _color = result;
              setState(() {});
            }
          }),
      PageData(
        name: Routes.dialogsPage,
        label: 'Ir a dialogs',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _color,
      ),
      body: ListView.builder(
        itemBuilder: (_, index) {
          final data = _pages[index];
          return ListTile(
            title: Text(data.label),
            onTap: () async {
              final result = await Navigator.pushNamed(
                context,
                data.name,
                arguments: data.args,
              );

              if (data.onResult != null) {
                data.onResult!(result);
              }
            },
          );
        },
        itemCount: _pages.length,
      ),
    );
  }
}

class PageData {
  final String name;
  final String label;
  final Object? args;
  final void Function(Object?)? onResult;

  PageData({
    required this.name,
    required this.label,
    this.args,
    this.onResult,
  });
}
