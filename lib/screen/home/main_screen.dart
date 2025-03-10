import 'package:btl/screen/home/home_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  List screens = const [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 0;
              }),
              child: Column(
                children: [
                  Icon(
                    Icons.home,
                    color: currentTab == 0 ? Colors.indigo[400] : Colors.grey,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 14,
                      color: currentTab == 0 ? Colors.indigo[400] : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 1;
              }),
              child: Column(
                children: [
                  Icon(
                    Icons.monitor_heart,
                    color: currentTab == 1 ? Colors.indigo[400] : Colors.grey,
                  ),
                  Text(
                    "Favorites",
                    style: TextStyle(
                      fontSize: 14,
                      color: currentTab == 1 ? Colors.indigo[400] : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 2;
              }),
              child: Column(
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: currentTab == 2 ? Colors.indigo[400] : Colors.grey,
                  ),
                  Text(
                    "Meal Plan",
                    style: TextStyle(
                      fontSize: 14,
                      color: currentTab == 2 ? Colors.indigo[400] : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 3;
              }),
              child: Column(
                children: [
                  Icon(
                    Icons.settings,
                    color: currentTab == 3 ? Colors.indigo[400] : Colors.grey,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 14,
                      color: currentTab == 3 ? Colors.indigo[400] : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: screens[currentTab],
    );
  }
}
