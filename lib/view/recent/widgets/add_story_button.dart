import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

Widget buildStoryButton() {
  return Container(
    width: 75,
    margin: const EdgeInsets.only(left: 6),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: const [
            CircleAvatar(
              radius: 34,
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1592214534258-0067435006d8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
            ),
            CircleAvatar(
              radius: 12,
              backgroundColor: AppColors.white,
              child: CircleAvatar(
                backgroundColor: AppColors.black,
                radius: 10,
                child: Icon(
                  Icons.add,
                  color: AppColors.white,
                  size: 14,
                ),
              ),
            ),
          ],
        ),
        const Text(
          "My Story",
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        )
      ],
    ),
  );
}
