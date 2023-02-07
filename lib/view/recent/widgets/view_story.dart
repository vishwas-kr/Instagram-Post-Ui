import 'package:flutter/material.dart';
import 'package:instagram_post/utils/app_colors.dart';
import 'package:instagram_post/widgets/user_post_header.dart';

import '../../../utils/loader.dart';

class ViewStory extends StatelessWidget {
  const ViewStory({super.key, required this.image, required this.name});
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            image,
            height: size.height,
            width: size.width,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const Loader();
            },
          ),
          SafeArea(
            child: Container(
              height: 65,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: UserPostHeader(
                name: name,
                profileImage: image,
                textColor: AppColors.snowWhite,
                action: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.black.withOpacity(0.5)),
                    child: const Icon(
                      Icons.close,
                      color: AppColors.snowWhite,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: size.width * 0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xff0F2027).withOpacity(0.8),
                        const Color(0xff203A43).withOpacity(0.5),
                        const Color(0xff2C5364).withOpacity(0.8)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                          width: size.width * 0.5,
                          child: TextFormField(
                            cursorColor: AppColors.white,
                            style: const TextStyle(color: AppColors.snowWhite),
                            decoration: const InputDecoration(
                              filled: true,
                              isDense: true,
                              hintText: "Send Message",
                              hintStyle: TextStyle(
                                  fontSize: 14, color: AppColors.snowWhite),
                              fillColor: Colors.transparent,
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                            ),
                          )),
                      const VerticalDivider(
                        color: AppColors.white,
                        thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          "😍",
                          style: TextStyle(fontSize: 24),
                        ),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xff0F2027).withOpacity(0.8),
                          const Color(0xff203A43).withOpacity(0.5),
                          const Color(0xff2C5364).withOpacity(0.8)
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Image.asset(
                      'assets/icons/share.png',
                      width: 24,
                      color: AppColors.snowWhite,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
