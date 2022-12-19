import 'dart:html';
import 'dart:js';
import 'dart:ui';

import 'package:colors/Classes/Dimentions.dart';
import 'package:colors/Classes/colors.dart';
import 'package:colors/Classes/titles.dart';
import 'package:colors/screens/Pages/fooddetails.dart';
import 'package:colors/screens/restaurants.dart';
import 'package:colors/screens/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:colors/screens/categories.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int selectedindex = 0;
  void navigation(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  final List Names = [
    'FILTERS |',
    'Prices',
    'No. of Persons',
    'Open Now',
    'Date',
    'Time',
  ];
  final List Resraurants = [
    //Resimage, rate, Resname, Restype, Location

    [
      'assets/food1(1).jpg',
      'Rating: 4.5 (5)',
      'Glorious Kitchen',
      'Restaurant',
      'Lagos, Nigeria',
      Newpages(),
    ],
    [
      'assets/food2(1).jpg',
      'Rating: 4.2 (5)',
      'The Food Corner',
      'Fast Food',
      'Abuja, Nigeria',
      Newpages(),
    ],
    [
      'assets/food3.jpeg',
      'Rating: 4.5 (5)',
      'Universal Eateries',
      'Restaurant',
      'Porthacourt, Nigeria',
      Newpages(),
    ],
    [
      'assets/food4.jpeg',
      'Rating: 4.3 (5)',
      'Floural Delicacy Home',
      'Restaurant',
      'Calabar, Nigeria',
      Newpages(),
    ],
    [
      'assets/food5.jpeg',
      'Rating: 4.7 (5)',
      'Food Town Locals',
      'Fast Food',
      'Lagos, Nigeria',
      Newpages(),
    ],
    [
      'assets/food6.jpg',
      'Rating: 4.5 (5)',
      "Queen's Delight Tables",
      'Restaurant',
      'Kano, Nigeria',
      Newpages(),
    ],
    [
      'assets/food1(1).jpg',
      'Rating: 4.3 (5)',
      'King Size Home',
      'Fast Food',
      'Kano, Nigeria',
      Newpages(),
    ],
  ];
  final List Image = [
    'assets/fast_food_logo.jpg',
    'assets/sea_food logo.png',
    'assets/barbecue_logo.jpg',
    'assets/dating_logo.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(children: [
                  SizedBox(height: Dimentions.height10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => Signuppage()));
                          },
                          child: Container(
                            height: Dimentions.signoutcheight,
                            width: Dimentions.signoutcwidth,
                            decoration: BoxDecoration(
                              color: Colors.black87,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'Sign Out',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Dimentions.fontsize15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text(
                              'Search',
                              style: TextStyle(
                                fontSize: Dimentions.fontsize30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.add_alert_outlined,
                          size: Dimentions.iconsize30,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Dimentions.height10),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search Restaurants',
                              hintStyle: TextStyle(
                                fontSize: Dimentions.fontsize15,
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                size: Dimentions.iconsize25,
                              ),
                              suffixIcon: GestureDetector(
                                  child: Icon(
                                Icons.arrow_forward,
                                size: Dimentions.iconsize25,
                              )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: Dimentions.height50,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: Names.length,
                              itemBuilder: (context, index) {
                                return titles(
                                  name: Names[index],
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
              Expanded(
                child: Container(
                  color: Colors.grey[200],
                  child: Padding(
                    padding: EdgeInsets.only(left: Dimentions.width20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: Dimentions.height30),
                        Text(
                          'POPULAR CATEGORIES',
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w700,
                            fontSize: Dimentions.fontsize15,
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.grey[200],
                                height: Dimentions.height100,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: Image.length,
                                    itemBuilder: (
                                      context,
                                      index,
                                    ) {
                                      return Padding(
                                        padding: EdgeInsets.only(
                                            top: Dimentions.height10,
                                            bottom: Dimentions.height10,
                                            right: Dimentions.height10),
                                        child:
                                            categories(imgpart: Image[index]),
                                      );
                                    }),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: Dimentions.height30),
                        Text(
                          'POPULAR RESTAURANTS',
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w700,
                            fontSize: Dimentions.fontsize15,
                          ),
                        ),
                        SizedBox(height: Dimentions.height10),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.grey[200],
                                height: Dimentions.cartheight2,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: Resraurants.length,
                                  itemBuilder: (context, index) {
                                    return restaurants(
                                      Resimage: Resraurants[index][0],
                                      rate: Resraurants[index][1],
                                      Resname: Resraurants[index][2],
                                      Restype: Resraurants[index][3],
                                      Location: Resraurants[index][4],
                                      newpages: Resraurants[index][5],
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: navigation,
          currentIndex: selectedindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'Profile'),
          ]),
    );
  }
}
