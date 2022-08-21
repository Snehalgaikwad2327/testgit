// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:flutter_searchapp/pages/MyHomePage1.dart';
import 'package:flutter_searchapp/pages/businessPage1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final pages = [
    MyHomePage(),
    BusinessPage1(),
    Center(
        child: Text(
      'School',
      style: TextStyle(fontSize: 60),
    )),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Bottom Navigation Bar',
      //     style: TextStyle(fontSize: 25),
      //   ),
      //   backgroundColor: Colors.lightGreen,
      // ),
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.lightGreen,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.blueGrey,
          iconSize: 40,
          // selectedFontSize: 25,
          // unselectedFontSize: 15,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {});
            currentIndex = index;
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Buiseness',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            )
          ]),
    );
  }
}
