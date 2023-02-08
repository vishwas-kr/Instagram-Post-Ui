import 'package:flutter/material.dart';
import 'package:instagram_post/utils/app_colors.dart';
import 'package:instagram_post/view/auth/auth_screen.dart';
import 'package:instagram_post/view/notification/notification_screen.dart';
import 'package:instagram_post/view/profile/profile_screen.dart';
import 'package:instagram_post/view/recent/recent_post_screen.dart';
import 'package:instagram_post/view/search_screen.dart/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> screens = const [
    RecentPostScreen(),
    SearchScreen(),
    AuthScreen(),
    NotificationScreen(),
    ProfielScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: currentIndex,
            children: screens,
          ),
          Positioned(bottom: 0, left: 0, right: 0, child: _buildBottomBar())
        ],
      ),
    );
  }

  Widget _buildBottomBar() {
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: Container(
        margin: const EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 24,
            type: BottomNavigationBarType.fixed,
            selectedIconTheme: const IconThemeData(color: AppColors.black),
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: currentIndex == 2
                    ? Image.asset(
                        'assets/icons/reel_fill.png',
                        width: 24,
                      )
                    : Image.asset(
                        'assets/icons/reel.png',
                        width: 24,
                      ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: currentIndex == 3
                    ? const Icon(Icons.favorite)
                    : const Icon(Icons.favorite_border_rounded),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '',
              ),
            ],
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
