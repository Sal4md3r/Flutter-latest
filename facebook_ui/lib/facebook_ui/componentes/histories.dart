import 'package:flutter/material.dart';
import '../../models/story.dart';
import 'avatar.dart';

final _stories = [
  Story(
      bg: 'assets/img/wallpapers/1.jpeg',
      avatar: 'assets/img/users/1.jpg',
      userName: 'Username 1'),
  Story(
      bg: 'assets/img/wallpapers/2.jpeg',
      avatar: 'assets/img/users/2.jpg',
      userName: 'Username 2'),
  Story(
      bg: 'assets/img/wallpapers/3.jpeg',
      avatar: 'assets/img/users/3.jpg',
      userName: 'Username 3'),
  Story(
      bg: 'assets/img/wallpapers/4.jpeg',
      avatar: 'assets/img/users/4.jpg',
      userName: 'Username 4'),
  Story(
      bg: 'assets/img/wallpapers/5.jpeg',
      avatar: 'assets/img/users/5.jpg',
      userName: 'Username 5'),
  Story(
      bg: 'assets/img/wallpapers/6.jpeg',
      avatar: 'assets/img/users/6.jpg',
      userName: 'Username 6'),
  Story(
      bg: 'assets/img/wallpapers/1.jpeg',
      avatar: 'assets/img/users/7.jpg',
      userName: 'Username 7'),
];

class Histories extends StatelessWidget {
  const Histories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          final story = _stories[index];
          return StoryItem(
            story: story,
            isFirst: index == 0 ? true : false,
          );
        },
        itemCount: _stories.length,
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  const StoryItem({
    super.key,
    required this.story,
    required this.isFirst,
  });

  final Story story;
  final bool isFirst;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 90,
      margin: EdgeInsets.only(
        right: 10,
        left: isFirst ? 20 : 0,
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 0,
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(story.bg),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Avatar(
                    image: story.avatar,
                    tamanio: 40,
                    borderSize: 3,
                  ),
                ),
              ],
            ),
          ),
          Text(
            story.userName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
