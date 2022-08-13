import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nutriai/analytics.dart';
import 'package:nutriai/home.dart';
import 'package:nutriai/profile.dart';
import 'package:nutriai/scan.dart';
import 'package:nutriai/search.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print(e.code);
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'NutriAI',
      home: HomeBar(),
    );
  }
}

class HomeBar extends StatefulWidget {
  const HomeBar({Key? key}) : super(key: key);

  @override
  State<HomeBar> createState() => _HomeBarState();
}

class _HomeBarState extends State<HomeBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Search(),
    Scan(),
   Analytics(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          elevation: 0,
          title: const Text(
            'NutriAI',
            style: TextStyle(
              color: Color(0xFF7B4EA8),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.document_scanner_outlined), label: 'Scan'),
            BottomNavigationBarItem(
                icon: Icon(Icons.graphic_eq_sharp), label: 'Analytics'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'Person'),
          ],
          showSelectedLabels: true,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xFF7B4EA8),
          selectedIconTheme: const IconThemeData(size: 30),
          onTap: _onItemTapped,
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ));
  }
}
