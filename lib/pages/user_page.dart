import 'package:flutter/material.dart';
import 'package:sisters_of_islam_qatar/components/star_widget.dart';
import 'package:sisters_of_islam_qatar/components/post_widget.dart';
import 'package:sisters_of_islam_qatar/constants.dart';

class UserPage extends StatelessWidget {
  final String homeImage =
      "https://www.pinclipart.com/picdir/big/98-986505_439-excellence-scholars-since-postgraduate-icon-clipart.png";

  final String bio = "Ask me about Islamic Mindfulness and Marriage Advice.";

  String contactUrl = "about.me/hiraahmedxx";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppPrimaryColor,
        title: Text(kAppName),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          _buildInfoSection(),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  Widget _buildInfoSection() {
    return Card(
      margin: EdgeInsets.zero,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  child: Container(
                    child: Image.network(
                      kProfilePic,
                      height: 60,
                      width: 60,
                    ),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  height: 60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(children: <Widget>[
                        Text(
                          "Hira Ahmed ",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.verified_user)
                      ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.grey.shade200,
            ),
            child: Row(
              children: <Widget>[
                Image.network(
                  homeImage,
                  height: 30,
                  width: 30,
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  "Islamic Scholar",
                  style: kTextStyle,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              bio,
              style: kTextStyle,
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: Colors.grey.shade400,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Old Salata, Qatar",
                      style: kTextStyle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.link,
                      color: Colors.grey.shade400,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      contactUrl,
                      style: kTextStyle.copyWith(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Islamic Mindfulness   ",
                      style: kTextStyle.copyWith(fontWeight: FontWeight.w500),
                    ),
                    StarDisplayWidget(
                      value: 4,
                      filledStar:
                          Icon(Icons.star, color: kAppPrimaryColor, size: 32),
                      unfilledStar: Icon(Icons.star, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Marriage Counseling   ",
                      style: kTextStyle.copyWith(fontWeight: FontWeight.w500),
                    ),
                    StarDisplayWidget(
                      value: 3,
                      filledStar:
                          Icon(Icons.star, color: kAppPrimaryColor, size: 32),
                      unfilledStar: Icon(Icons.star, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          RaisedButton(
            child: Text("Send Message"),
            onPressed: () {},
            color: kAppPrimaryColor,
            textColor: Colors.white70,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            splashColor: Colors.grey,
          ),
        ],
      ),
    );
  }

  Widget _buildRepositoriesSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.label_important,
                color: Colors.grey.shade400,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "Pinned",
                style: kTextStyle.copyWith(fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: kUserPosts.map((post) {
                    return PostWidget(
                      profilePic: kProfilePic,
                      username: post.username,
                      language: post.language,
                      post: post.post,
                      stars: post.stars,
                      description: post.description,
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPinnedSection() {
    return Card(
      child: Column(
        children: <Widget>[
          _buildRepositoriesSection(),
          _buildSubSections(),
        ],
      ),
    );
  }

  Widget _buildSubSections() {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            "Repositories",
            style: kTextStyle,
          ),
          trailing: Text(
            "39",
            style: kTextStyle.copyWith(color: Colors.grey.shade600),
          ),
        ),
        Divider(),
        ListTile(
          title: Text(
            "Organizations",
            style: kTextStyle,
          ),
          trailing: Text(
            "0",
            style: kTextStyle.copyWith(color: Colors.grey.shade600),
          ),
        ),
        Divider(),
        ListTile(
          title: Text(
            "Starred",
            style: kTextStyle,
          ),
          trailing: Text(
            "75",
            style: kTextStyle.copyWith(color: Colors.grey.shade600),
          ),
        ),
        Divider(),
        ListTile(
          title: Text(
            "Following",
            style: kTextStyle,
          ),
          trailing: Text(
            "0",
            style: kTextStyle.copyWith(color: Colors.grey.shade600),
          ),
        ),
        Divider(),
      ],
    );
  }
}
