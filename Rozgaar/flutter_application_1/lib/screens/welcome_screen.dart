import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/map_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  // ignore: must_call_super
  void initState() {
    Timer(const Duration(seconds: 4),
        () => {Navigator.pushNamed(context, MapScreen.id)});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF007560),
              Color(0xFF015D4C),
            ],
          )),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.0),
            child: Center(
              child: Image(
                image: AssetImage('images/logo.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
