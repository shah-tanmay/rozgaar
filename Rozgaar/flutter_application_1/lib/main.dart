import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/congratulations_screen.dart';
import 'package:flutter_application_1/screens/location_screen.dart';
import 'package:flutter_application_1/screens/map_screen.dart';
import 'package:flutter_application_1/screens/scan_screen.dart';
import 'package:flutter_application_1/screens/serach_screen.dart';
import 'package:flutter_application_1/screens/welcome_screen.dart';

void main() {
  runApp(const Rozgar());
}

class Rozgar extends StatelessWidget {
  const Rozgar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: WelcomeScreen.id, routes: {
      WelcomeScreen.id: (context) => const WelcomeScreen(),
      MapScreen.id: (context) => const MapScreen(),
      CongratulationScreen.id: (context) => const CongratulationScreen(),
      LocationScreen.id: (context) => const LocationScreen(),
      SearchScreen.id: (context) => const SearchScreen(),
      ScanScreen.id: (context) => const ScanScreen(),
    });
  }
}
