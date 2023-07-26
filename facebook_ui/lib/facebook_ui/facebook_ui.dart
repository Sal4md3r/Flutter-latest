// ignore_for_file: must_be_immutable
import 'package:facebook_ui/facebook_ui/componentes/publication_item.dart';
import 'package:facebook_ui/models/publication.dart';

import 'componentes/quick_actions.dart';
import 'package:facebook_ui/icons/custom_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'componentes/circle_button.dart';
import 'componentes/header_ui.dart';
import 'componentes/histories.dart';
import 'package:faker/faker.dart';

class FacebookUi extends StatelessWidget {
  double tamanio = 40;

  FacebookUi({super.key});

  @override
  Widget build(Object context) {
    double espaciadorBar = 15;
    final faker = Faker();
    final random = faker.randomGenerator;
    final reactionIndex = random.integer(Reaction.values.length - 1);
    final publications = <Publication>[];

    for (int i = 0; i < 50; i++) {
      final publication = Publication(
        user: User(
          avatar: faker.image.image(),
          username: faker.person.name(),
        ),
        title: faker.lorem.sentence(),
        createdAt: faker.date.dateTime(),
        imageUrl: faker.image.image(),
        commentsCount: random.integer(180),
        sharesCount: random.integer(180),
        currentUserReaction: Reaction.values[reactionIndex],
      );

      publications.add(publication);
    }

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: const Color.fromRGBO(209, 40, 40, 0),
        elevation: 0,
        leadingWidth: 150,
        leading: SvgPicture.asset(
          'assets/logos/facebook.svg',
          color: const Color.fromRGBO(41, 110, 187, 1),
        ),
        actions: [
          CircleButton(
            icon: CustomIcons.search,
            color: const Color.fromRGBO(188, 188, 188, 1),
          ),
          SizedBox(width: espaciadorBar),
          CircleButton(
            icon: CustomIcons.bell,
            color: const Color.fromRGBO(252, 110, 109, 1),
          ),
          SizedBox(width: espaciadorBar),
          CircleButton(
            icon: CustomIcons.userFriends,
            color: const Color.fromRGBO(129, 182, 241, 1),
            showBadge: true,
          ),
          SizedBox(width: espaciadorBar),
          CircleButton(
            icon: CustomIcons.messenger,
            color: const Color.fromRGBO(35, 142, 240, 1),
          ),
          SizedBox(width: espaciadorBar),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          const HeaderUI(),
          const SizedBox(height: 30),
          const QuickActions(),
          const SizedBox(height: 30),
          const Histories(),
          const SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            itemCount: publications.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) => PublicationItem(
              publication: publications[index],
            ),
          ),
        ],
      ),
    );
  }
}
