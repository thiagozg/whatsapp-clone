import 'package:flutter/material.dart';
import 'package:whats_app_clone/constants.dart';
import 'package:whats_app_clone/home.dart';

void main() => runApp(
  Constants(
    child: WhatsApp(),
  ),
);

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: Constants.of(context).primaryColor,
        accentColor: Constants.of(context).accentColor
      ),
      debugShowCheckedModeBanner: false,
      home: WhatsAppHome()
    );
  }
}

