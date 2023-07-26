import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CircleButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final bool showBadge;

  double tamanio = 36;
  double tamanioIcono = 15;

  CircleButton({
    super.key,
    required this.icon,
    required this.color,
    this.showBadge = false,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: tamanio,
            height: tamanio,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: tamanioIcono,
            ),
          ),
          if (showBadge)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                  border: Border.all(
                    width: 3,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
