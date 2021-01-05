import 'dart:async';

import 'package:flutter/material.dart';
import 'ui/login_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  initScreen(BuildContext context) {
    return MaterialApp(
      title: 'Aromair',
      home: Container(
        color: Colors.blueAccent,
      ),
    );
  }
}
