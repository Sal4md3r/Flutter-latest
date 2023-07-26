import 'package:flutter/material.dart';
import 'package:inputs_section/pages/calendar_page.dart';
import 'package:inputs_section/pages/checkbox_page.dart';
import 'package:inputs_section/pages/keyboard_types_page.dart';
import 'package:inputs_section/pages/radio_page.dart';
import 'package:inputs_section/pages/slider_page.dart';
import 'package:inputs_section/pages/textfield_page.dart';
import 'package:inputs_section/routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.textField: (_) => const TextFieldPage(),
    Routes.keyboadTypes: (_) => const KeyboardTypesPage(),
    Routes.checkboxPage: (_) => const CheckboxPage(),
    Routes.radioPage: (_) => const RadioPage(),
    Routes.sliderPage: (_) => const SliderPage(),
    Routes.calendar: (_) => const CalendarPage(),
  };
}
