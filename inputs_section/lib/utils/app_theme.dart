import 'package:flutter/material.dart';
import 'material_color_generator.dart';

ThemeData getThemeData(BuildContext context) {
  return ThemeData(
    primarySwatch: generateMaterialColor(Colors.amber),
    inputDecorationTheme: const InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 2,
        ),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(
        Colors.greenAccent,
      ),
      checkColor: MaterialStateProperty.all(
        Colors.green,
      ),
      overlayColor: MaterialStateProperty.all(
        Colors.grey,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
    ),
  );
}
