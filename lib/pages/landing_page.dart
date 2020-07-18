import 'package:flutter/material.dart';
import 'package:sisters_of_islam_qatar/components/login_button.dart';
import 'package:sisters_of_islam_qatar/pages/home_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF880E4F),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                height: 100,
                image: AssetImage('images/sistersofislam-qa-whitepink.png'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text(
                  'Sisters of Islam Qatar',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: GestureDetector(
                  child: LoginButton(),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  ),
                ),
              ),
//                      LoginButton()),
              Text(
                'Don`t have an account yet? SIGN UP here',
                style: TextStyle(
                    color: Colors.grey[200],
                    fontWeight: FontWeight.normal,
                    fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
