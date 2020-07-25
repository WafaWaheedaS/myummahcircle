import 'package:flutter/material.dart';
import 'package:sisters_of_islam_qatar/constants.dart';

class CreatePostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppPrimaryColor,
        title: Text('New Activity'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.info),
            title: TextField(
              decoration: InputDecoration(
                hintText: "Title",
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.category),
            title: TextField(
              decoration: InputDecoration(
                hintText: "Category",
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.not_listed_location),
            title: TextField(
              decoration: InputDecoration(
                hintText: "Location",
              ),
            ),
          ),
          const Divider(
            height: 1.0,
          ),
          ListTile(
            leading: const Icon(Icons.label),
            title: const Text('Markaz Mariam Center'),
            subtitle: const Text('Sisters only halaqahs'),
          ),
          ListTile(
            leading: const Icon(Icons.today),
            title: const Text('Event Date'),
            subtitle: const Text('August 20, 2020'),
          ),
          ListTile(
            leading: const Icon(Icons.group),
            title: const Text('Organizing group'),
            subtitle: const Text('Not specified'),
          )
        ],
      ),
    );
  }
}
