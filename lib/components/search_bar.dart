import 'package:flutter/material.dart';
import 'package:sisters_of_islam_qatar/constants.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30.0, 10.0, 20.0, 10.0),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.black38.withAlpha(10),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search activity or find a community",
                hintStyle: TextStyle(
                  color: Colors.black.withAlpha(120),
                ),
                border: InputBorder.none,
              ),
              onChanged: (String keyword) {},
            ),
          ),
          Icon(
            Icons.search,
            color: Colors.black.withAlpha(120),
          )
        ],
      ),
    );
  }
}
