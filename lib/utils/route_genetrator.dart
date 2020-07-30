import 'package:flutter/material.dart';
import 'package:jack_doc_burguer/views/home.dart';
import 'package:jack_doc_burguer/views/login.dart';
import 'package:jack_doc_burguer/views/sign_up.dart';
import 'package:jack_doc_burguer/views/splash_screen.dart';

class RouteGenerator {
  // ignore: missing_return
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => JackDocSplashScreen());
      case "/login":
        return MaterialPageRoute(builder: (_) => Login());
      case "/signUp":
        return MaterialPageRoute(builder: (_) => SignUp());
      case "/home":
        return MaterialPageRoute(builder: (_) => Home());
      default:
        _routeError();
    }
  }

  static Route<dynamic> _routeError() {
    return MaterialPageRoute(
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Tela não encontrada!"),
            ),
            body: Center(
              child: Text("Tela não encontrada!"),
            ),
          );
        }
    );
  }
}
