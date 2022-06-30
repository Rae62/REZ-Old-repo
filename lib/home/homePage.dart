import 'package:flutter/material.dart';
import 'package:muselight/Screens/Authentification/login.dart';
import 'package:muselight/Screens/Authentification/register.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool visible = true;
  toggle(){
    setState(() {
      visible = !visible;
    });
  }
  @override
  Widget build(BuildContext context) {
    return visible ? Login(toggle) : Register(toggle);
  }
}