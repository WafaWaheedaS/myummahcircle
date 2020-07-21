import 'package:flutter/material.dart';
import 'package:sisters_of_islam_qatar/components/login_button.dart';
import 'package:sisters_of_islam_qatar/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF880E4F),
        title: Text('Sisters of Islam Qatar'),
        centerTitle: true,
      ),
      body: Text('Login form'),
    );
  }
}
