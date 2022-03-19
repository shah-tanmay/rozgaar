import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/location_screen.dart';

class CongratulationScreen extends StatefulWidget {
  static const String id = 'congratulation_screen';
  const CongratulationScreen({Key? key}) : super(key: key);

  @override
  _CongratulationScreenState createState() => _CongratulationScreenState();
}

class _CongratulationScreenState extends State<CongratulationScreen> {
  @override
  // ignore: must_call_super
  void initState() {
    Timer(const Duration(seconds: 2),
        () => {Navigator.pushNamed(context, LocationScreen.id)});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage('images/congratulations.png'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Center(
                  child: Text(
                    "Congratulations",
                    style: TextStyle(fontSize: 20, color: kPrimaryTextColor),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Your Account has been Successfully created",
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xFF1C3047),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
