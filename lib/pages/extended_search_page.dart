import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:search_widget/search_widget.dart';
import 'package:sisters_of_islam_qatar/components/near_by_widget.dart';
import 'package:sisters_of_islam_qatar/constants.dart';
import 'package:sisters_of_islam_qatar/pages/user_page.dart';

import 'create_post_page.dart';

class ExtendedSearchPage extends StatefulWidget {
  @override
  _ExtendedSearchPageState createState() => _ExtendedSearchPageState();
}

class _ExtendedSearchPageState extends State<ExtendedSearchPage> {
  List<LeaderBoard> list = <LeaderBoard>[
    LeaderBoard("Mindfulness", 54),
    LeaderBoard("Ibrahim", 22.5),
    LeaderBoard("Dhull Hijjah", 24.7),
    LeaderBoard("Arafat", 22.1),
  ];

  LeaderBoard _selectedItem;

  bool _show = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppPrimaryColor,
        title: Text("Search"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 16,
            ),
            if (_show)
              SearchWidget<LeaderBoard>(
                dataList: list,
                hideSearchBoxWhenItemSelected: false,
                listContainerHeight: MediaQuery.of(context).size.height / 4,
                queryBuilder: (query, list) {
                  return list
                      .where((item) => item.title
                          .toLowerCase()
                          .contains(query.toLowerCase()))
                      .toList();
                },
                popupListItemBuilder: (item) {
                  return PopupListItemWidget(item);
                },
                selectedItemBuilder: (selectedItem, deleteSelectedItem) {
                  return SelectedItemWidget(selectedItem, deleteSelectedItem);
                },
                // widget customization
                noItemsFoundWidget: NoItemsFound(),
                textFieldBuilder: (controller, focusNode) {
                  return MyTextField(controller, focusNode);
                },
                onItemSelected: (item) {
                  setState(() {
                    _selectedItem = item;
                  });
                },
              ),
            const SizedBox(
              height: 32,
            ),
            Text(
              "${_selectedItem != null ? _selectedItem.title : ""
                  "No item selected"}",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CreatePostPage()),
        ),
        child: Icon(Icons.add),
        backgroundColor: kAppPrimaryColor,
      ),
    );
  }
}

class LeaderBoard {
  LeaderBoard(this.title, this.score);

  final String title;
  final double score;
}

class SelectedItemWidget extends StatelessWidget {
  const SelectedItemWidget(this.selectedItem, this.deleteSelectedItem);

  final LeaderBoard selectedItem;
  final VoidCallback deleteSelectedItem;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                selectedItem.title,
                style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserPage()),
              ),
              child: Card(
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.person,
                      ),
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Hira Ahmed',
                          style:
                              TextStyle(color: kAppPrimaryColor, fontSize: 18),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Ask me about Islamic Mindfulness and Marriage Advice.',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UserPage()),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            NearByWidget(
              title: 'How to be a Mindful Muslim?',
              subtitle: 'Sisters only Halaqah by Hira Ahmed, Fanar Center',
            ),
            NearByWidget(
              title: 'Your Connection with the Quran',
              subtitle:
                  'Sisters only Halaqah by Rahima Habib, Qatar Women Guest Center',
            ),
            NearByWidget(
              title: 'Learning Circle on Daawah',
              subtitle:
                  'Sharing experiences with Daawah. Event by Sisters of Islam Qatar.',
            ),
          ],
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField(this.controller, this.focusNode);

  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x4437474F),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
          ),
          suffixIcon: Icon(Icons.search),
          border: InputBorder.none,
          hintText: "Search activity or find a community",
          contentPadding: const EdgeInsets.only(
            left: 16,
            right: 20,
            top: 14,
            bottom: 14,
          ),
        ),
      ),
    );
  }
}

class NoItemsFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(
          Icons.sentiment_dissatisfied,
          size: 24,
          color: Colors.grey[900].withOpacity(0.7),
        ),
        const SizedBox(width: 10),
        Text(
          "No Activities or Communities Found",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[900].withOpacity(0.7),
          ),
        ),
      ],
    );
  }
}

class PopupListItemWidget extends StatelessWidget {
  const PopupListItemWidget(this.item);

  final LeaderBoard item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Text(
        item.title,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
