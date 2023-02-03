import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_post/utils/image_url.dart';

import '../../../utils/loader.dart';

class PostGrid extends StatelessWidget {
  const PostGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      itemCount: userPostimages.length,
      itemBuilder: ((context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            userPostimages[index],
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const Loader();
            },
          ),
        );
      }),
    );
  }
}
