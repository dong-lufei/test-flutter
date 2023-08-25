// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'pages/index.dart';
import 'pages/company.dart';
import 'pages/school.dart';

void main() => runApp(const MaterialApp(
      home: MyHome(),
    ));

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int curPageIndex = 1;

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> items = [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: '首页',
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.business),
        label: '公司',
        activeIcon: Image.asset(
          "static/poster.jpg",
          width: 50,
          height: 50,
        ),
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.school),
        label: '学校',
      ),
    ];

    List<Widget> pages = [const MyIndex(), const MyCompany(), const MySchool()];

    return Scaffold(
      body: pages[curPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curPageIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 12,
        items: items,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          print("index: $index");
          setState(() {
            curPageIndex = index;
          });
          print("pages:${pages[curPageIndex]}");
        },
      ),
    );
  }
}
