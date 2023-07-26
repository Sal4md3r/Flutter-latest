import 'package:flutter/material.dart';
import '../componentes/avatar.dart';

class HeaderUI extends StatelessWidget {
  const HeaderUI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        children: [
          Avatar(
            tamanio: 50,
            image: 'assets/img/users/1.jpg',
          ),
          const SizedBox(width: 20),
          const Flexible(
            child: Text(
              "What's on your mind",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
