import 'package:flutter/material.dart';
import 'package:instagram_post/widgets/post_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      body: SingleChildScrollView(
        child: Column(
          ///////.....BUILDS THE POST SECTION.....///////
          children: const [PostBuilder()],
        ),
      ),
    );
  }
}
