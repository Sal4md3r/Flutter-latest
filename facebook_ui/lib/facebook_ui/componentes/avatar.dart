// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double tamanio;
  final String image;
  final double borderSize;
  Avatar({
    super.key,
    required this.tamanio,
    required this.image,
    this.borderSize = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: tamanio,
      height: tamanio,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: borderSize,
          color: Colors.white,
        ),
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
    );
  }
}
