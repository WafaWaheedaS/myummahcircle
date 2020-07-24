import 'package:flutter/material.dart';

const kAppName = 'Ikhwat';
const kTextStyle = TextStyle(
  fontSize: 16,
);
const kProfilePic =
    'https://avatars0.githubusercontent.com/u/6831328?s=400&u=7fc73f5a84d8c2f2433fb42b81f06ae85da84edc&v=4';

class Post {
  String profilePicUrl;
  String username;
  String post;
  String description;

  String language;
  int stars;

  Post(
      {this.profilePicUrl,
      this.username,
      this.post,
      this.description,
      this.language,
      this.stars});
}

final kUserPosts = [
  Post(
    profilePicUrl: kProfilePic,
    username: "usman18",
    post: "Flutter-UI-Kit",
    description: "A Post full of beautiful Flutter examples",
    language: "Dart",
    stars: 58,
  ),
  Post(
    profilePicUrl: kProfilePic,
    username: "usman18",
    post: "TastyToasty",
    description:
        "An easy-to-use library to create tasty Toasts with a bunch of flavours.",
    language: "Java",
    stars: 28,
  ),
];
