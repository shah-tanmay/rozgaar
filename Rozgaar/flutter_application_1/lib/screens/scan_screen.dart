import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:flutter_application_1/constants.dart';

class ScanScreen extends StatefulWidget {
  static const String id = 'scan_screen';
  const ScanScreen({Key? key}) : super(key: key);

  @override
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const SizedBox(height: double.infinity),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.15,
              color: kPrimaryColor,
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Delivery & Pickup/Driving... ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: const [
                          Icon(Icons.location_pin,
                              size: 25, color: Colors.white),
                          Text(
                            "Okhla Phase I, Okhla Industrial Area, New Delhi",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Center(
                      child: Image(
                        image: AssetImage('images/scan.png'),
                      ),
                    ),
                  ),
                  Button(text: "Scan Now", onPress: () {}),
                  const Text(
                    "Recently Added",
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 10),
                    child: Card(
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Phone Number",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Skill Code",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Pincode",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: 7,
                            itemBuilder: (BuildContext context, int index) {
                              return NumberCard();
                            }),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget NumberCard() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text("+91 7875355798"),
          Text("2"),
          Text("Pincode"),
        ],
      ),
    );
  }
}
