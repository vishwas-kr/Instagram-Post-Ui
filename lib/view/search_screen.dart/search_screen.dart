import 'package:flutter/cupertino.dart';

import '../profile/widgets/post_grid.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(child: PostGrid());
  }
}
