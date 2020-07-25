import 'package:flutter/material.dart';
import 'package:sisters_of_islam_qatar/pages/create_post_page.dart';
import 'package:sisters_of_islam_qatar/pages/landing_page.dart';
import 'package:sisters_of_islam_qatar/pages/send_message_page.dart';
import 'package:sisters_of_islam_qatar/pages/user_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(), //UserPage() //
    ),
  );
}
