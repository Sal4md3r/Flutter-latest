import 'package:flutter/material.dart';

Future<void> showBottomSheetDialog(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    enableDrag: false,
    builder: (context) => Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.elliptical(20, 10),
          topRight: Radius.elliptical(20, 10),
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.music_note),
              title: const Text('Music'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_sharp),
              title: const Text('Photos'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.mail),
              title: const Text('Messages'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    ),
  );
}
