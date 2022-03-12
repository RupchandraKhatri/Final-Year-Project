// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:hamro_saman/screens/bottom/add_items.dart';
import 'package:hamro_saman/screens/bottom/userDetails/main_profile.dart';
import 'package:hamro_saman/screens/home/widget/appliances_sell.dart';
import 'package:hamro_saman/screens/home/widget/custom_app_bar.dart';
import 'package:hamro_saman/screens/home/widget/new_arrival.dart';
import 'package:hamro_saman/screens/home/widget/search.dart';

class HomeScreen extends StatelessWidget {
  // final bottomList = ["home", "heart", "user"];
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            SearchBar(),
            NewArrival(),
            AppliancesSell(),
            //BottomNavBar()
          ],
        ),
      ),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  final screens = [
    HomeScreen(),
    AddItems(),
    MainProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: IndexedStack(
      //   index: currentIndex,
      //   children: screens,
      // ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueAccent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        // iconSize: 20,
        // selectedFontSize: 20,
        // unselectedFontSize: 15,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            //backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sell),
            label: "Sell Product",
            //backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "User",
            //backgroundColor: Colors.yellow,
          ),
        ],
      ),
    );
  }
}



      // bottomNavigationBar: BottomNavigationBar(
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   type: BottomNavigationBarType.fixed,
      //   items: bottomList
      //       .map((e) => BottomNavigationBarItem(
      //             label: e,
      //             icon: Image.asset(
      //               "assets/icons/$e.png",
      //               width: 25,
      //             ),
      //           ))
      //       .toList(),
      // ),
