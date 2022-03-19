import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/serach_screen.dart';

class LocationScreen extends StatefulWidget {
  static const String id = 'location_screen';
  const LocationScreen({Key? key}) : super(key: key);

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const SizedBox(height: double.infinity),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.2,
              color: kPrimaryColor,
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Current Location: ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: const [
                          Icon(Icons.location_pin,
                              size: 25, color: Colors.white),
                          Text(
                            "Keshav Puram, Mayur Vihar, New Delhi,Delhi",
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
              top: MediaQuery.of(context).size.height * 0.2 - 30,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Card(
                    elevation: 2,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Enter Your Location here....",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.2 + 30,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GridView.count(
                    childAspectRatio: 1.57,
                    crossAxisCount: 2,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                    children: [
                      LocationCard(
                          'images/truck.png', "Delivery & Pickup/Driving"),
                      LocationCard('images/broom.png', "Cleaning"),
                      LocationCard('images/hammer.png', "Plumber and mechanic"),
                      LocationCard(
                          'images/barricade.png', "Construction/Manual work"),
                      LocationCard('images/prateek.png', "Security Guard"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget LocationCard(String image, String text) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SearchScreen.id);
      },
      child: Container(
        height: 100,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                    child: Image.asset(image, height: 40, width: 40),
                    alignment: Alignment.topRight),
                SizedBox(height: 10),
                Text(text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
