import 'package:flutter/material.dart';
import 'package:inputs_section/app_routes.dart';
import 'package:inputs_section/utils/app_theme.dart';
import 'package:inputs_section/utils/material_color_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final focus = FocusScope.of(context);
        final focusedChild = focus.focusedChild;

        if (focusedChild != null && !focusedChild.hasPrimaryFocus) {
          focusedChild.unfocus();
        }
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: getThemeData(context),
        home: const HomePage(),
        routes: appRoutes,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final keys = appRoutes.keys.toList();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
        ),
        body: ListView.builder(
          itemBuilder: (_, index) {
            final routeName = keys[index];
            return ListTile(
              onTap: () {
                Navigator.pushNamed(context, routeName);
              },
              title: Text(routeName),
            );
          },
          itemCount: keys.length,
        ));
  }
}
