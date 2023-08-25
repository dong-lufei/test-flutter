// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_widget/pages/page2.dart';
import 'package:flutter_widget/pages/page3.dart';
import 'package:flutter_widget/pages/page4.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyTabBar();
}

class _MyTabBar extends State<MyApp> with SingleTickerProviderStateMixin {
  final arr = List.generate(99, (index) => Text('$index'));
  late int currentPageIndex = 0;

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: arr.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final landscapeWidget = Scaffold(
      appBar: AppBar(
        title: const Text('竖屏标题'),
        bottom:
            TabBar(tabs: arr, controller: _tabController, isScrollable: true),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home, color: Colors.teal),
            label: 'home',
          ),
          NavigationDestination(
            icon: Icon(Icons.business, color: Colors.cyan),
            label: 'business',
          ),
          NavigationDestination(
            icon: Icon(Icons.school, color: Colors.orange),
            label: 'school',
          ),
          NavigationDestination(
            //selectedIcon: Icon(Icons.flight),
            icon: Icon(Icons.flight, color: Colors.blue),
            label: 'flight',
          ),
        ],
      ),
      body: [
        Container(
          color: Colors.teal,
          alignment: Alignment.center,
          child: TabBarView(controller: _tabController, children: arr),
        ),
        const Page2(),
        const Page3(),
        const Page4(),
      ][currentPageIndex],
    );

    return OrientationBuilder(builder: (context, orientation) {
      print(
          "当前屏幕的方向是：$orientation"); // Orientation.landscape、Orientation.portrait
      return MaterialApp(
          theme: ThemeData(
              colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
          title: 'My app', // 操作系统任务切换器使用
          home: SafeArea(
              child: orientation == Orientation.landscape
                  ? Row(children: [
                      NavigationRail(
                        selectedIndex: currentPageIndex,
                        groupAlignment: 0,
                        onDestinationSelected: (int index) {
                          setState(() {
                            currentPageIndex = index;
                          });
                        },
                        labelType: NavigationRailLabelType.all,
                        destinations: const [
                          NavigationRailDestination(
                            icon: Icon(Icons.home, color: Colors.teal),
                            // selectedIcon: Icon(Icons.favorite),
                            label: Text('home'),
                          ),
                          NavigationRailDestination(
                            icon: Icon(Icons.business, color: Colors.cyan),
                            label: Text('business'),
                          ),
                          NavigationRailDestination(
                            icon: Icon(Icons.school, color: Colors.orange),
                            label: Text('business'),
                          ),
                          NavigationRailDestination(
                            icon: Icon(Icons.flight, color: Colors.blue),
                            label: Text('flight'),
                          ),
                        ],
                      ),
                      Expanded(
                          child: [
                        Container(
                            color: Colors.teal,
                            alignment: Alignment.center,
                            // child: Text("sdfdfs")
                            child: Scaffold(
                              appBar: AppBar(
                                title: const Text('横屏标题'),
                                bottom: TabBar(
                                    tabs: arr,
                                    controller: _tabController,
                                    isScrollable: true),
                              ),
                              body: [
                                Container(
                                  color: Colors.teal,
                                  alignment: Alignment.center,
                                  child: TabBarView(
                                      controller: _tabController,
                                      children: arr),
                                ),
                                const Page2(),
                                const Page3(),
                                const Page4(),
                              ][currentPageIndex],
                            )),
                        const Page2(),
                        const Page3(),
                        const Page4(),
                      ][currentPageIndex]),
                    ])
                  : landscapeWidget));
    });
  }
}
