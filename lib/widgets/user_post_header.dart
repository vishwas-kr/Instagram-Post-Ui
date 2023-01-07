import 'package:flutter/material.dart';

////////........Take Two Parameters Name and Profile Image....///////

class UserPostHeader extends StatelessWidget {
  const UserPostHeader({
    Key? key,
    required this.name,
    required this.profileImage,
  }) : super(key: key);
  final String name;
  final String profileImage;

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
              child: Image.network(profileImage),
            ),
          ),
          const SizedBox(width: 10),
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          const Icon(Icons.more_horiz_outlined),
        ],
      ),
    );
  }
}
