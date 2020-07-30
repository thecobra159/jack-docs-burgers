import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var _controllerEmail = TextEditingController();
  var _controllerPassword = TextEditingController();
  var _controllerConfirmPassword = TextEditingController();

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

  _renderConfirmPasswordInputText(width, height, color) {
    return Container(
      alignment: Alignment.center,
      width: width * 0.7,
      height: height * 0.065,
      child: Padding(
        padding: EdgeInsets.only(bottom: 8),
        child: TextField(
          controller: _controllerConfirmPassword,
          keyboardType: TextInputType.text,
          obscureText: true,
          style: TextStyle(fontSize: 20, color: Colors.white),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(30, 15, 30, 15),
            hintText: "Confirme sua senha",
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

  _renderSignUpButton(width, height, color) {
    return (FlatButton(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      onPressed: () => {},
      child: Text(
        "Cadastre-se",
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
                  _renderEmailInputText(_width, _height, _appColor),
                  _renderPasswordInputText(_width, _height, _appColor),
                  _renderConfirmPasswordInputText(_width, _height, _appColor),
                  _renderSignUpButton(_width, _height, _appColor),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
