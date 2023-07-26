import 'package:flutter/material.dart';
import 'circle_button.dart';

class ActionWidget extends StatelessWidget {
  final Color color;
  final Color textColor;
  final Color bgColor;
  final String text;
  final IconData icon;

  const ActionWidget({
    super.key,
    required this.icon,
    required this.color,
    required this.text,
    required this.textColor,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 25,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: bgColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleButton(
            icon: icon,
            color: color,
          ),
          const SizedBox(width: 15),
          Text(text,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
              ))
        ],
      ),
    );
  }
}
