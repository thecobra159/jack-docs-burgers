import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'login.dart';

class JackDocSplashScreen extends StatefulWidget {
  @override
  _JackDocSplashScreenState createState() => _JackDocSplashScreenState();
}

class _JackDocSplashScreenState extends State<JackDocSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: Login(),
      title: new Text(
        "Jack & Doc's Burgers",
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          fontFamily: "Dosis",
        ),
      ),
      image: new Image.network('https://i.imgur.com/TyCSG9A.png'),
      backgroundColor: Theme.of(context).primaryColor,
      photoSize: 100.0,
      loaderColor: Theme.of(context).accentColor,
    );
  }
}
