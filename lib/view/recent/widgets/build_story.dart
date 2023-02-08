import 'package:flutter/material.dart';
import 'package:instagram_post/utils/data.dart';
import 'package:instagram_post/utils/image_url.dart';
import 'package:instagram_post/view/recent/widgets/add_story_button.dart';
import 'package:instagram_post/view/recent/widgets/view_story.dart';

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
              itemCount: storyData.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ViewStory(
                                image: storyData[index].image,
                                name: storyData[index].name,
                              )));
                },
                child: Container(
                  width: 75,
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: const Color(0xff826F6F),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: const Color(0xff826F6F),
                          backgroundImage: NetworkImage(
                            storyData[index].image,
                          ),
                        ),
                      ),
                      Text(
                        storyData[index].name,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
