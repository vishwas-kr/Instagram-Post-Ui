import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_post/utils/image_url.dart';

import '../../utils/app_colors.dart';
import '../../utils/loader.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            floating: true,
            snap: true,
            toolbarHeight: 65,
            backgroundColor: Colors.black87,
            title: Container(
              margin: const EdgeInsets.only(bottom: 8.0),
              child: TextField(
                cursorColor: AppColors.white,
                style: const TextStyle(color: AppColors.snowWhite),
                decoration: InputDecoration(
                  filled: true,
                  isDense: true,
                  hintText: "Search",
                  hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
                  fillColor: Colors.black38,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.black12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
          ),
        ],
        body: GridView.custom(
          shrinkWrap: true,
          padding: const EdgeInsets.only(top: 0, bottom: 50),
          gridDelegate: SliverQuiltedGridDelegate(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            repeatPattern: QuiltedGridRepeatPattern.inverted,
            pattern: const [
              QuiltedGridTile(3, 2),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 2),
            ],
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) => Image.network(
              searchScreenPostImages[index],
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const Loader();
              },
            ),
            childCount: searchScreenPostImages.length,
          ),
        ),
      ),
    );
  }
}
