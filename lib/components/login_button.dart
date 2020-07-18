import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsets.symmetric(horizontal: 70, vertical: 30),
      alignment: Alignment.center,
      child: Text(
        'LOG IN',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white12,
      ),
    );
  }
}
