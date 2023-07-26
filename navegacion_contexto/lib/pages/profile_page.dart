import 'package:flutter/material.dart';
import '../routes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            // Navigator.popUntil(context, (route) {
            //   final name = route.settings.name;

            //   return name == Routes.mainPage;
            // });
            Navigator.pushNamedAndRemoveUntil(
              context,
              Routes.mainPage,
              (route) => route.settings.name == Routes.mainPage,
            );
          },
          child: const Text("Log out"),
        ),
      ),
    );
  }
}
