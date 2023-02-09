import 'package:flutter/material.dart';
import 'package:instagram_post/utils/app_colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          "Notifications",
          style: TextStyle(
              fontSize: 18,
              color: AppColors.black,
              fontWeight: FontWeight.w700),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.notifications_active_rounded,
              color: AppColors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  height: 65,
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(90),
                        child: Container(
                          height: 65,
                          width: 65,
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          child: Image.network(
                            "https://images.unsplash.com/photo-1675645387065-f66030ecd8bd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMjN8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: RichText(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          text: const TextSpan(
                            text: "Rushi",
                            style: TextStyle(
                                color: AppColors.black,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text: " started following you.",
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
