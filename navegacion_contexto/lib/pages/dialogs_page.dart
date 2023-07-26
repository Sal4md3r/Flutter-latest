import 'package:flutter/material.dart';
import 'package:navegacion_contexto/dialogs/confirm_dialog.dart';
import 'package:navegacion_contexto/dialogs/bottom_sheet_dialog.dart';
import 'package:navegacion_contexto/dialogs/custom_dialog.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ListTile(
            title: const Text("show dialog "),
            onTap: () async {
              await showDialog(
                context: context,
                builder: (context) => const DialogContent(),
              );
            },
          ),
          ListTile(
            title: const Text("show confirm dialog "),
            onTap: () async {
              final isOk = await showConfirmDialog(
                context,
                title: '¿Este es el titulo?',
              );
              print('estado ------- $isOk');
            },
          ),
          ListTile(
            title: const Text("show bottom sheet dialog "),
            onTap: () async {
              await showBottomSheetDialog(context);
            },
          ),
          ListTile(
            title: const Text("show my custom dialog"),
            onTap: () async {
              await showCustomDialog(context);
            },
          ),
        ],
      ),
    );
  }
}

class DialogContent extends StatelessWidget {
  const DialogContent({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: const Text('Mi primer dialogo'),
      actions: [
        MaterialButton(
          child: const Text('Cerrar'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
