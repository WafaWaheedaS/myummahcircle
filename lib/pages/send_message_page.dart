import 'package:flutter/material.dart';
import 'package:sisters_of_islam_qatar/constants.dart';
import 'package:sisters_of_islam_qatar/external/bubble.dart';

class MyMessagePage extends StatefulWidget {
  MyMessagePage({Key key}) : super(key: key);

  @override
  _MyMessagePageState createState() => _MyMessagePageState();
}

class _MyMessagePageState extends State<MyMessagePage> {
  @override
  Widget build(BuildContext context) {
    double pixelRatio = MediaQuery.of(context).devicePixelRatio;
    double px = 1 / pixelRatio;

    BubbleStyle styleSomebody = BubbleStyle(
      nip: BubbleNip.leftTop,
      color: Colors.white,
      elevation: 1 * px,
      margin: BubbleEdges.only(top: 8.0, right: 50.0),
      alignment: Alignment.topLeft,
    );
    BubbleStyle styleMe = BubbleStyle(
      nip: BubbleNip.rightTop,
      color: kAppPrimaryColor.withAlpha(50),
      elevation: 1 * px,
      margin: BubbleEdges.only(top: 8.0, left: 50.0),
      alignment: Alignment.topRight,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppPrimaryColor,
        title: Text('Hira Ahmed'),
        centerTitle: true,
      ),
      body: Container(
        color: kAppPrimaryColor.withAlpha(64),
        child: ListView(
          padding: EdgeInsets.all(8.0),
          children: [
            Bubble(
              alignment: Alignment.center,
              color: Color.fromARGB(255, 212, 234, 244),
              elevation: 1 * px,
              margin: BubbleEdges.only(top: 8.0),
              child: Text('TODAY', style: TextStyle(fontSize: 10)),
            ),
            Bubble(
              style: styleMe,
              child: Text(
                  'Salaam Hiba, I have a problem that I`d like to discuss.'),
            ),
            Bubble(
              style: styleSomebody,
              child: Text('W.Salaam, Sure. Please let me know'),
            ),
            Bubble(
              style: styleMe,
              margin: BubbleEdges.only(top: 8.0),
              child: Text('I have trouble focusing in salaat.'),
            ),
            Bubble(
              style: styleMe,
              child:
                  Text('Can you help me with some techniques to concentrate?'),
            ),
            Bubble(
              style: styleMe,
              child: Text(
                  'Would really appreciate if you can also point me to resources.'),
            ),
            Bubble(
              style: styleSomebody,
              margin: BubbleEdges.only(top: 8.0),
              child: Text(
                  'Sure! I`m offering a halaqah on this topic inshaAllah. Would you like to attend?'),
            ),
            Bubble(
              style: styleMe,
              margin: BubbleEdges.only(top: 8.0),
              child: Text('Yes, would love that!'),
            ),
            Bubble(
              style: styleMe,
              child: Text('......'),
            ),
          ],
        ),
      ),
    );
  }
}
