import 'package:flutter/material.dart';

Future<void> showCustomDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (_) => const _CustomDialog(),
  );
}

class _CustomDialog extends StatelessWidget {
  const _CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        borderRadius: BorderRadius.circular(15),
        child: SizedBox(
          width: 360,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 30,
                    )),
              ),
              const Text(
                'Congratulations',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              const Icon(
                Icons.emoji_emotions_outlined,
                color: Colors.green,
                size: 100,
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Es un hecho establecido hace demasiado tiempo que un lector se distraerá con ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
