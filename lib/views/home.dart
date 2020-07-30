import 'package:flutter/material.dart';
import 'package:jack_doc_burguer/utils/functions.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0,
        elevation: 0,
        centerTitle: true,
        title: Text("Jack & Doc's Burgers"),
      ),
      drawer: renderDrawer(context),
      body: Container(
        width: 0,
        height: 0,
      ),
    );
  }
}
