import 'package:flutter/material.dart';

Future<bool> showConfirmDialog(
  BuildContext context, {
  String title = '',
}) async {
  final result = await showDialog<bool>(
    barrierColor: Colors.purple.withOpacity(0.4),
    barrierDismissible: false,
    context: context,
    builder: (context) => _DialogContent(
      title: title,
    ),
  );

  return result ?? false;
}

class _DialogContent extends StatelessWidget {
  const _DialogContent({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: AlertDialog(
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        actionsAlignment: MainAxisAlignment.center,
        alignment: Alignment.bottomCenter,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        actions: [
          MaterialButton(
            child: const Text(
              'Sí',
              style: TextStyle(
                color: Colors.green,
                fontSize: 18,
              ),
            ),
            onPressed: () {
              Navigator.pop(context, true);
            },
          ),
          MaterialButton(
            child: const Text(
              'No',
              style: TextStyle(
                color: Colors.red,
                fontSize: 18,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      onWillPop: () async => false,
    );
  }
}
