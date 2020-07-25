import 'package:flutter/material.dart';
import 'package:sisters_of_islam_qatar/components/near_by_widget.dart';
import 'package:sisters_of_islam_qatar/components/search_bar.dart';
import 'package:sisters_of_islam_qatar/constants.dart';
import 'package:flutter/widgets.dart';
import 'package:sisters_of_islam_qatar/pages/create_post_page.dart';
import 'package:sisters_of_islam_qatar/pages/extended_search_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppPrimaryColor,
        title: Text(kAppName),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExtendedSearchPage()),
                ),
                child: SearchBar(),
              ),
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

  titleText(data) {
    return Text(data['title']);
  }
}
