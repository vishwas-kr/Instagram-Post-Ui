import 'package:flutter/material.dart';
import 'package:instagram_post/utils/app_colors.dart';
import 'package:instagram_post/utils/image_url.dart';
import 'package:instagram_post/view/profile/widgets/post_grid.dart';
import 'package:instagram_post/view/profile/widgets/round_button.dart';

class ProfielScreen extends StatelessWidget {
  const ProfielScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: -50,
            top: -100,
            child: Image.network(
              "https://images.unsplash.com/photo-1598897516650-e4dc73d8e417?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmxhY2slMjBhbmQlMjB3aGl0ZSUyMHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
              scale: 1,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.black.withOpacity(0.5),
                  Colors.white.withOpacity(0.1),
                  Colors.grey
                ],
                stops: const [0.02, 0.3, 0.6],
              ),
            ),
          ),
          SafeArea(
            child: Container(
              height: 65,
              padding: const EdgeInsets.only(left: 16, right: 16, top: 8.0),
              child: Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Elodie",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/icons/at.png",
                            width: 24,
                          ),
                          const Text(
                            "Elodie",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: AppColors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  RoundButton(
                      onTap: () {}, iconPath: "assets/icons/ellipse.png"),
                  const SizedBox(width: 10),
                  RoundButton(onTap: () {}, iconPath: "assets/icons/share.png"),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: size.height * 0.38),
                //////.........👨‍🦱 Builds User Image Follower and Info 👩‍🦱....../////
                Column(
                  children: [
                    Container(
                      height: 200,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xff826F6F).withOpacity(0.8),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: LayoutBuilder(builder: (context, constraints) {
                        return Column(
                          children: [
                            Container(
                              height: constraints.maxHeight * 0.5,
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, top: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    radius: constraints.maxWidth * 0.11,
                                    backgroundColor: const Color(0xff826F6F),
                                    child: CircleAvatar(
                                      radius: constraints.maxWidth * 0.1,
                                      backgroundImage: const NetworkImage(
                                          "https://images.unsplash.com/photo-1592214534258-0067435006d8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
                                    ),
                                  ),
                                  SizedBox(width: constraints.maxWidth * 0.08),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    "2.1 M",
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color: AppColors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "follower",
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: AppColors.white,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height:
                                                  constraints.maxHeight * 0.25,
                                              width: constraints.maxWidth / 2.5,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: AppColors.white,
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: const Text(
                                                "Follow",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            //Builds Overlapped Circular Avatars 😎
                                            for (int i = 0;
                                                i < follower.length;
                                                i++)
                                              Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 1),
                                                child: Align(
                                                    widthFactor: 0.6,
                                                    child: CircleAvatar(
                                                      radius:
                                                          constraints.maxWidth *
                                                              0.035,
                                                      backgroundColor:
                                                          Colors.white,
                                                      child: CircleAvatar(
                                                        radius: constraints
                                                                .maxWidth *
                                                            0.03,
                                                        backgroundImage:
                                                            NetworkImage(
                                                          follower[i],
                                                        ),
                                                      ),
                                                    )),
                                              ),
                                            const SizedBox(width: 15),
                                            const Expanded(
                                              child: Text(
                                                '+ 21 mutual friends',
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    color: AppColors.grey),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ////////.......User Info 📝......////////
                            Container(
                              height: constraints.maxHeight * 0.4,
                              width: constraints.maxWidth,
                              margin: const EdgeInsets.all(8),
                              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(20)),
                              child: RichText(
                                text: const TextSpan(
                                  text: "Actor \n",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                  children: [
                                    TextSpan(
                                      text: 'LA 💙💜\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: AppColors.grey,
                                          height: 1.2),
                                    ),
                                    TextSpan(
                                      text: 'Collaboration : elodie@gmail.com',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: AppColors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                    ),
                    ////////.......User Posts section.....///////////
                    PostGrid()
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// Container(
//   height: size.height * 0.25,
//   alignment: Alignment.center,
//   margin: const EdgeInsets.all(16),
//   decoration: BoxDecoration(
//     color: const Color(0xff826F6F).withOpacity(0.8),
//     borderRadius: BorderRadius.circular(15),
//   ),
//   child: Column(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       Padding(
//         padding: const EdgeInsets.symmetric(
//             horizontal: 16.0, vertical: 10.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             const CircleAvatar(
//               radius: 40,
//               backgroundColor: Color(0xff826F6F),
//               child: CircleAvatar(
//                 radius: 35,
//                 backgroundImage: NetworkImage(
//                     "https://images.unsplash.com/photo-1592214534258-0067435006d8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
//               ),
//             ),
//             Column(
//               children: const [
//                 Text(
//                   "2.9 M",
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(
//                       fontSize: 18,
//                       color: AppColors.white,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   "follower",
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(
//                     color: AppColors.white,
//                   ),
//                 )
//               ],
//             ),
//             Container(
//               height: size.height * 0.06,
//               width: size.width / 3,
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                 color: AppColors.white,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: const Text(
//                 "Follow",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             )
//           ],
//         ),
//       ),
//       Container(
//         height: size.height * 0.1,
//         margin: const EdgeInsets.all(8),
//         padding: const EdgeInsets.all(16),
//         decoration: BoxDecoration(
//             color: Colors.grey.withOpacity(0.7),
//             borderRadius: BorderRadius.circular(20)),
//         child: const Text(
//           "Progetto, rido, fallisco e documento tutto qui. fallisco e documento tutto qui. fallisco e documento tutto qui.",
//           maxLines: 2,
//           overflow: TextOverflow.ellipsis,
//           style: TextStyle(color: AppColors.white),
//         ),
//       ),
//     ],
//   ),
// ),
