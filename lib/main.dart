import 'package:flutter/material.dart';
import 'package:jack_doc_burguer/views/login.dart';

void main() {
  var _theme = ThemeData(
    primaryColor: Color(0xffFFBF00),
    accentColor: Color(0xff5C4500),
    buttonColor: Color(0xffFFBF00),
    backgroundColor: Color(0xff4D4D4D),
    fontFamily: 'Dosis',
  );

  runApp(MaterialApp(
    home: Login(),
    debugShowCheckedModeBanner: false,
    theme: _theme,
  ));
}
