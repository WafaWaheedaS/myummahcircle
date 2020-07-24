import 'package:flutter/material.dart';
import 'package:sisters_of_islam_qatar/components/search_bar.dart';
import 'package:sisters_of_islam_qatar/constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppPrimaryColor,
        title: Text(kAppName),
        centerTitle: true,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SearchBar(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Home Page',
                style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
          ]),
    );
  }
}
