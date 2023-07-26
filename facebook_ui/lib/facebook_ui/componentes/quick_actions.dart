import 'package:flutter/material.dart';
import 'package:facebook_ui/icons/custom_icons.dart';
import 'action_widget.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const FittedBox(
      fit: BoxFit.scaleDown,
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Row(
          //alignment: WrapAlignment.spaceBetween,
          children: [
            ActionWidget(
              icon: CustomIcons.photos,
              color: Color.fromRGBO(170, 217, 163, 1),
              text: 'Gallery',
              textColor: Color.fromRGBO(147, 190, 139, 1),
              bgColor: Color.fromRGBO(237, 248, 234, 1),
            ),
            SizedBox(width: 15),
            ActionWidget(
              icon: CustomIcons.userFriends,
              color: Color.fromRGBO(132, 181, 237, 1),
              text: 'Tag Friends',
              textColor: Color.fromRGBO(128, 155, 182, 1),
              bgColor: Color.fromRGBO(229, 238, 253, 1),
            ),
            SizedBox(width: 15),
            ActionWidget(
              icon: CustomIcons.videoCamera,
              color: Color.fromRGBO(235, 169, 155, 1),
              text: 'Live',
              textColor: Color.fromRGBO(184, 149, 145, 1),
              bgColor: Color.fromRGBO(252, 234, 230, 1),
            ),
          ],
        ),
      ),
    );
  }
}
