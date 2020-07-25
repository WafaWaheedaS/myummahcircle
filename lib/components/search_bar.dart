import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 10.0),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
      decoration: BoxDecoration(
//        color: Colors.black38.withAlpha(10),
        border: Border(
          top: BorderSide(width: 1.0, color: Colors.grey),
          left: BorderSide(width: 1.0, color: Colors.grey),
          right: BorderSide(width: 1.0, color: Colors.grey),
          bottom: BorderSide(width: 1.0, color: Colors.grey),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
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
