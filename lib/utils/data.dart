import 'package:instagram_post/utils/image_url.dart';

import '../model/story.dart';
import '../model/uder_model.dart';

//////......... Raw Data For Displaying User Posts .....////////
///..... User Post mdoel from Model Folder..../////

List<UserPost> userPostData = [
  UserPost(
    name: "Jacob Grey",
    profilePic: profileImage[0],
    postImage: postImage[0],
    likes: 154,
    description:
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.',
  ),
  UserPost(
    name: "Alina Blaese",
    profilePic: profileImage[1],
    postImage: postImage[1],
    likes: 247,
    description:
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.',
  ),
  UserPost(
    name: "Friends Forever",
    profilePic: profileImage[2],
    postImage: postImage[2],
    likes: 44,
    description:
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.',
  ),
  UserPost(
    name: "Adam Jones",
    profilePic: profileImage[3],
    postImage: postImage[3],
    likes: 125,
    description:
        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.',
  ),
];

List<Story> storyData = [
  Story(name: "James", image: story[0]),
  Story(name: "Lee Barn", image: story[1]),
  Story(name: "Kylie", image: story[2]),
  Story(name: "Ellie", image: story[3]),
  Story(name: "Ruth jil", image: story[4]),
  Story(name: "Jessica", image: story[5]),
  Story(name: "Namora", image: story[6]),
  Story(name: "John", image: story[7]),
];
