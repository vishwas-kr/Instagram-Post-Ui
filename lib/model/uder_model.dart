////////.........Simple User Post Model....../////////

class UserPost {
  final String name;
  final String profilePic;
  final String postImage;
  final String description;
  final int likes;

  UserPost({
    required this.name,
    required this.profilePic,
    required this.postImage,
    required this.likes,
    required this.description,
  });
}
