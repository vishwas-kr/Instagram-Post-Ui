import 'package:flutter/material.dart';
import 'package:instagram_post/utils/app_colors.dart';
import 'package:instagram_post/utils/image_url.dart';
import 'package:instagram_post/view/recent/widgets/add_story_button.dart';

class BuildStory extends StatelessWidget {
  const BuildStory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Container(
        height: 100,
        padding: const EdgeInsets.only(top: 8.0),
        child: Row(
          children: [
            buildStoryButton(),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: story.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                width: 75,
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: const Color(0xff826F6F),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          story[index],
                        ),
                      ),
                    ),
                    const Text(
                      'Elodie',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
