import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
// import 'package:petify/constants.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  Button({required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
      child: Material(
        elevation: 6.0,
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8),
        child: MaterialButton(
          onPressed: onPress,
          height: 42,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
