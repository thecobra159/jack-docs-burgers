import 'package:flutter/material.dart';
import 'package:jack_doc_burguer/views/splash_screen.dart';

final _theme = ThemeData(
  primaryColor: Color(0xffFFBF00),
  accentColor: Color(0xff5C4500),
  buttonColor: Color(0xffFFBF00),
  backgroundColor: Color(0xff4D4D4D),
  fontFamily: 'Dosis',
);

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    initialRoute: "/",
    home: JackDocSplashScreen(),
    debugShowCheckedModeBanner: false,
    theme: _theme,
  ));
}
