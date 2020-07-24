import 'package:flutter/material.dart';
import 'package:sisters_of_islam_qatar/constants.dart';

class NearByWidget extends StatelessWidget {
  final title;
  final subtitle;

  NearByWidget({this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.album,
            ),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(color: kAppPrimaryColor, fontSize: 18),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                subtitle,
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            onTap: () {},
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('MORE'),
                onPressed: () {/* ... */},
              ),
              FlatButton(
                child: const Text('ATTEND'),
                onPressed: () {/* ... */},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
