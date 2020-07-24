import 'package:flutter/material.dart';
import 'package:sisters_of_islam_qatar/components/near_by_widget.dart';
import 'package:sisters_of_islam_qatar/components/search_bar.dart';
import 'package:sisters_of_islam_qatar/constants.dart';

class HomePage extends StatelessWidget {
  final nearByData = [
    {
      'id': 1,
      'title': 'Allah`s love for Ibrahim (AS)',
      'subtitle': 'Sisters only Halaqah by Sana Habib, Markaz Islamic Center'
    },
    {'id': 2, 'title': 'Allah`s love for Ibrahim (AS)', 'subtitle': 'yyy'}
  ];
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SearchBar(),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              'Near By',
              style: TextStyle(
                  color: Colors.grey[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          NearByWidget(
            title: 'Allah`s love for Ibrahim (AS)',
            subtitle:
                'Sisters only Halaqah by Sana Habib, Markaz Islamic Center',
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
    );
  }

  titleText(data) {
    return Text(data['title']);
  }
}
