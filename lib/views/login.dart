import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _controllerEmail = TextEditingController();
  var _controllerPassword = TextEditingController();

  _renderSocialMediaLogin(width, height, color) {
    return Container(
      width: width,
      height: height * 0.05,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          GestureDetector(
            onTap: () => Fluttertoast.showToast(
                msg: "Facebook",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.transparent.withOpacity(0.5),
                textColor: Colors.white,
                fontSize: 16.0
            ),
            child: Image.asset(
              "assets/images/facebook_login.png",
              color: color,
            ),
          ),
          GestureDetector(
            onTap: () => Fluttertoast.showToast(
                msg: "Google",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.transparent.withOpacity(0.5),
                textColor: Colors.white,
                fontSize: 16.0
            ),
            child: Image.asset(
              "assets/images/google_login.png",
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  _renderEmailInputText(width, height, color) {
    return Container(
      alignment: Alignment.center,
      width: width * 0.7,
      height: height * 0.065,
      child: Padding(
        padding: EdgeInsets.only(bottom: 8),
        child: TextField(
          controller: _controllerEmail,
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(fontSize: 20, color: Colors.white),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(30, 15, 30, 15),
            hintText: "E-mail",
            hintStyle: TextStyle(
                color: Colors.white,
                fontFamily: 'Dosis',
                fontWeight: FontWeight.w500),
            icon: Icon(
              FlutterIcons.email_mco,
              color: color,
            ),
            filled: false,
            fillColor: Colors.transparent,
          ),
        ),
      ),
    );
  }

  _renderPasswordInputText(width, height, color) {
    return Container(
      alignment: Alignment.center,
      width: width * 0.7,
      height: height * 0.065,
      child: Padding(
        padding: EdgeInsets.only(bottom: 8),
        child: TextField(
          controller: _controllerPassword,
          keyboardType: TextInputType.text,
          obscureText: true,
          style: TextStyle(fontSize: 20, color: Colors.white),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(30, 15, 30, 15),
            hintText: "Senha",
            hintStyle: TextStyle(
                color: Colors.white,
                fontFamily: 'Dosis',
                fontWeight: FontWeight.w500),
            icon: Icon(
              FlutterIcons.textbox_password_mco,
              color: color,
            ),
            filled: false,
            fillColor: Colors.transparent,
          ),
        ),
      ),
    );
  }

  _renderLoginButton(width, height, color) {
    return (FlatButton(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      onPressed: () => {},
      child: Text(
        "Login",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'Dosis',
            fontSize: 16),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    var _appColor = Theme.of(context).primaryColor;

    return Scaffold(
      body: Container(
        width: _width,
        height: _height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/city-night.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: _width * 0.8,
              height: _height * 0.5,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.transparent.withOpacity(0.7),
              ),
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  _renderSocialMediaLogin(_width, _height, _appColor),
                  Padding(
                    padding: EdgeInsets.only(top: 25, bottom: 15),
                    child: Container(
                      width: _width * 0.35,
                      height: 1,
                      color: _appColor,
                    ),
                  ),
                  _renderEmailInputText(_width, _height, _appColor),
                  _renderPasswordInputText(_width, _height, _appColor),
                  _renderLoginButton(_width, _height, _appColor),
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: GestureDetector(
                      onTap: () => Fluttertoast.showToast(
                          msg: "Cadastre-se",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.transparent.withOpacity(0.5),
                          textColor: Colors.white,
                          fontSize: 16.0
                      ),
                      child: Text(
                        "Cadastre-se",
                        style: TextStyle(
                            fontFamily: "Dosis",
                            fontWeight: FontWeight.w300,
                            color: _appColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
