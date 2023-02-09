import 'package:instagram_post/utils/image_url.dart';

import '../model/story_model.dart';
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

List<StoryModel> storyData = [
  StoryModel(name: "Lee Barn", image: story[1]),
  StoryModel(name: "Kylie", image: story[2]),
  StoryModel(name: "Ellie", image: story[3]),
  StoryModel(name: "Ruth jil", image: story[4]),
  StoryModel(name: "Jessica", image: story[5]),
  StoryModel(name: "Namora", image: story[6]),
  StoryModel(name: "John", image: story[7]),
  StoryModel(name: "James", image: story[0]),
];
