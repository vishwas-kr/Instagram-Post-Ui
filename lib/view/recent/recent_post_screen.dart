import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/data.dart';
import '../../utils/image_url.dart';
import '../../widgets/post_action.dart';
import '../../widgets/user_post_header.dart';

class RecentPostScreen extends StatelessWidget {
  const RecentPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: const Icon(Icons.camera_alt_outlined),
        centerTitle: true,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontFamily: 'Billabong',
            fontSize: 30,
            letterSpacing: 2,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Image.asset(
            'assets/icons/tv.png',
            width: 24,
          ),
          const SizedBox(width: 10),
          Image.asset(
            'assets/icons/message.png',
            width: 24,
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: ListView.builder(
        shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: userPostData.length,
        itemBuilder: ((context, index) {
          return Container(
            color: AppColors.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ////....Upper Header Of Post Contains Name and Proifle Pic....////
                UserPostHeader(
                  profileImage: profileImage[index],
                  name: userPostData[index].name,
                ),
                /////......User Posted Image.....//////
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      userPostData[index].postImage,
                      fit: BoxFit.cover,
                    ),
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
            ),
          );
        }),
      ),
    );
  }
}
