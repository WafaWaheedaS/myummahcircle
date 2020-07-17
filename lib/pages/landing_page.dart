import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Center(
              heightFactor: 10,
              child: Text('Sisters of Islam Qatar'),
            ),
          ],
        ),
      ),
    );
  }
}
