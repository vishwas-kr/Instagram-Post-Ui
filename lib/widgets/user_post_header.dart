import 'package:flutter/material.dart';
import 'package:instagram_post/utils/app_colors.dart';

////////........Take Two Parameters Name and Profile Image....///////

class UserPostHeader extends StatelessWidget {
  const UserPostHeader({
    Key? key,
    required this.name,
    required this.profileImage,
    required this.action,
    this.textColor,
  }) : super(key: key);
  final String name;
  final String profileImage;
  final Widget action;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(90),
            child: Container(
              decoration: const BoxDecoration(shape: BoxShape.circle),
              height: 45,
              width: 45,
              child: Image.network(
                profileImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.w600, color: textColor),
          ),
          const Spacer(),
          action
        ],
      ),
    );
  }
}
