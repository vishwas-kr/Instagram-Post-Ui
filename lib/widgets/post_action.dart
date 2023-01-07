import 'package:flutter/material.dart';

//////......Builds Like Share Commet and Book mark Icons.....//////
class PostAction extends StatelessWidget {
  const PostAction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
      child: Row(
        children: [
          const Icon(Icons.favorite_border_outlined),
          const SizedBox(width: 10),
          Image.asset(
            'assets/icons/comment.png',
            width: 24,
          ),
          const SizedBox(width: 10),
          Image.asset(
            'assets/icons/share.png',
            width: 20,
          ),
          const Spacer(),
          const Icon(Icons.bookmark_border_outlined),
        ],
      ),
    );
  }
}
