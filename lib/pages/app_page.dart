import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:audi_connect/pages/screens/car_health.dart';
import 'package:audi_connect/pages/screens/engine_starter_page.dart';
import 'package:audi_connect/pages/screens/home_screen.dart';

class AppPage extends StatefulWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  int index = 1;

  final screens = [
    EngineStarterPage(),
    HomeScreen(),
    CarHealthPage(),
  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Image.asset(
        "assets/icons/steering-wheel.png",
        height: 30,
        width: 30,
        color: Colors.white,
      ),
      Image.asset(
        "assets/img/audi_logo.png",
        height: 50,
        width: 50,
      ),
      Image.asset(
        "assets/icons/health.png",
        height: 30,
        width: 30,
        color: Colors.white,
      ),
    ];
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        color: Color.fromARGB(255, 38, 48, 61),
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        items: items,
        height: 60,
        animationDuration: Duration(milliseconds: 300),
        index: index,
        onTap: (index) => setState(() => this.index = index),
      ),
    );
  }
}
