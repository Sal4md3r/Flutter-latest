import 'package:flutter/material.dart';
import 'package:navegacion_contexto/pages/color_picker.dart';
import 'package:navegacion_contexto/pages/counter_page.dart';
import 'package:navegacion_contexto/pages/dialogs_page.dart';
import 'package:navegacion_contexto/pages/login_page.dart';
import 'package:navegacion_contexto/pages/menu_page.dart';
import 'package:navegacion_contexto/pages/profile_page.dart';
import 'package:navegacion_contexto/pages/splash_page.dart';
import 'routes.dart';

T getArguments<T>(BuildContext context) {
  return ModalRoute.of(context)!.settings.arguments as T;
}

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.menuPage: (context) => const MenuPage(),
    Routes.counterPage: (context) => const CounterPage(),
    Routes.loginPage: (context) {
      final email = getArguments<String>(context);
      return LoginPage(email: email);
    },
    Routes.profilePage: (context) => const ProfilePage(),
    Routes.splashPage: (context) => const SplashPage(),
    Routes.colorPickerPage: (context) => const ColorPicker(),
    Routes.dialogsPage: (context) => const DialogsPage(),
  };
}
