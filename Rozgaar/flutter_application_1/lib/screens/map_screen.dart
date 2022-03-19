// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/congratulations_screen.dart';

class MapScreen extends StatefulWidget {
  static const String id = 'map_screen';
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
              child: Text(
                "One place to find and connect with your employer",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 25,
                  color: kPrimaryTextColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: Image(
                image: AssetImage('images/map.png'),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.search, color: kPrimaryTextColor, size: 30),
                  SizedBox(width: 10),
                  Text(
                    "Searching Current Location",
                    style: TextStyle(
                      fontSize: 22,
                      color: kPrimaryTextColor,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            Button(
                text: "Continue",
                onPress: () {
                  Navigator.pushNamed(context, CongratulationScreen.id);
                }),
          ],
        ),
      ),
    );
  }
}
