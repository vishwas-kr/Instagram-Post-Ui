import 'package:flutter/material.dart';
import 'package:instagram_post/utils/data.dart';
import 'package:instagram_post/utils/image_url.dart';
import 'package:instagram_post/widgets/post_action.dart';
import 'package:instagram_post/widgets/user_post_header.dart';

class PostBuilder extends StatelessWidget {
  const PostBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    //////////.......Build the List of Post......./////////
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: userPostData.length,
      itemBuilder: ((context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ////....Upper Header Of Post Contains Name and Proifle Pic....////
            UserPostHeader(
              profileImage: profileImage[index],
              name: userPostData[index].name,
            ),
            /////......User Posted Image.....//////
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.maxFinite,
              child: Image.network(
                userPostData[index].postImage,
                fit: BoxFit.cover,
              ),
            ),
            /////......... Like, Comments, Share, Bookmark Icon Buttons../////
            const PostAction(),
            ////......Post Likes......////
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                '${userPostData[index].likes} Likes',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ////......Post Description......////
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: RichText(
                text: TextSpan(
                  text: '${userPostData[index].name} ',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                  children: [
                    TextSpan(
                      text: userPostData[index].description,
                      style: const TextStyle(fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
            ),

            ////.....Post Comments....////
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'View all 54 comments',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 10),
          ],
        );
      }),
    );
  }
}
