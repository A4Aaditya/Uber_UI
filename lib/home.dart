import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:uber_api/pages/choose_destination.dart';

import 'package:uber_api/pages/location_page.dart';
import 'package:uber_api/pages/map.dart';
import 'package:uber_api/pages/ride_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        actions: [
          CircleAvatar(
            backgroundColor: Color.fromARGB(255, 188, 187, 187),
            radius: 24,
            child: Icon(
              Icons.account_box,
              color: Color.fromARGB(255, 101, 100, 100),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            // First Component
            CarouselSlider(
              items: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('img/uber_logo.jpeg'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('img/uber_car.jpeg'),
                      ),
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 170,
                viewportFraction: 1,
              ),
            ),
            // Second Component
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 24),
                  RideItems(
                    text: 'Ride',
                    icon: (Icons.car_repair),
                  ),
                  SizedBox(width: 24),
                  RideItems(
                    text: 'Package',
                    icon: (Icons.account_box),
                  ),
                  SizedBox(width: 24),
                  RideItems(
                    text: 'Rental',
                    icon: (Icons.car_rental_outlined),
                  ),
                  SizedBox(width: 24),
                  RideItems(
                    text: 'Intercity',
                    icon: (Icons.car_rental_outlined),
                  ),
                ],
              ),
            ),
            // Third Component
            ChooseDestination(),

            // Forth Component
            LocationPages(
              icon: Icons.star_rounded,
              text: 'Choose a saved place',
            ),

            Row(
              children: [
                SizedBox(
                  width: 93,
                ),
                Expanded(
                  child: Divider(
                    thickness: 3,
                  ),
                ),
              ],
            ),

            LocationPages(
              icon: Icons.location_on,
              text: 'Set destination on map',
            ),

            Row(
              children: [
                SizedBox(width: 93),
                Expanded(
                  child: Divider(
                    thickness: 3,
                  ),
                ),
              ],
            ),

            MapPage(),
          ],
        ),
      ),
    );
  }
}
