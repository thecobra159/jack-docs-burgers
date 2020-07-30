import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';

renderDrawer(context) {
  var _theme = Theme.of(context);
  var _width = MediaQuery.of(context).size.width;
  var _height = MediaQuery.of(context).size.height;

  return Drawer(
    elevation: 8,
    child: ListView(
      padding: EdgeInsets.all(15),
      children: <Widget>[
        DrawerHeader(
          margin: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(5),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [_theme.primaryColor, _theme.accentColor],
            ),
          ),
          child: Container(
            width: _width * 0.3,
            height: _height * 0.2,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(FlutterIcons.hamburger_mco),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text("Ainda vai a logo aqui ok"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        ListTile(
          leading:
              Icon(FlutterIcons.hamburger_faw5s, color: _theme.accentColor),
          title: Text("hamburgão"),
          subtitle: Text("crie aqui"),
        ),
        ListTile(
          leading: Icon(FlutterIcons.wallet_faw5s, color: _theme.accentColor),
          title: Text("Carteira"),
          subtitle: Text("Adicione fundos"),
        ),
        ListTile(
          leading: Icon(FlutterIcons.person_mdi, color: _theme.accentColor),
          title: Text("Minha Conta"),
        ),
      ],
    ),
  );
}
