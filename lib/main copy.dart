// ignore_for_file: avoid_print
// import 'package:flutter/material.dart';
// import 'home.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       themeMode: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       // theme: ThemeData(
//       //   primarySwatch: Colors.red,
//       // ),
//       home: const MyHome(),
//     );
//   }
// }

// // 测试
// import 'package:flutter/material.dart';

// class MyAppBar extends StatelessWidget {
//   const MyAppBar({required this.title, super.key});

//   // Fields in a Widget subclass are always marked "final".

//   final Widget title;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 56.0, // in logical pixels
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       decoration: BoxDecoration(color: Colors.blue[500]),
//       // Row is a horizontal, linear layout.
//       child: Row(
//         children: [
//           const IconButton(
//             icon: Icon(Icons.menu),
//             tooltip: 'Navigation menu',
//             onPressed: null, // null disables the button
//           ),
//           // Expanded expands its child
//           // to fill the available space.
//           Expanded(
//             child: title,
//           ),
//           const IconButton(
//             icon: Icon(Icons.search),
//             tooltip: 'Search',
//             onPressed: null,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MyScaffold extends StatelessWidget {
//   const MyScaffold({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Material is a conceptual piece
//     // of paper on which the UI appears.
//     return Material(
//       // Column is a vertical, linear layout.
//       child: Column(
//         children: [
//           MyAppBar(
//             title: Text(
//               'Example title',
//               style: Theme.of(context)
//                   .primaryTextTheme
//                   .titleLarge, // Theme.of(context).textTheme.titleLarge
//             ),
//           ),
//           const Expanded(
//             child: Center(
//               child: Text('Hello, world!'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(
//     const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'My app', // used by the OS task switcher
//       home: SafeArea(
//         child: MyScaffold(),
//       ),
//     ),
//   );
// }

// // 测试 TabBarView TabBar
// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'TabBarView demo',
//       home: TabBarViewDemo(),
//     ),
//   );
// }

// class TabBarViewDemo extends StatelessWidget {
//   const TabBarViewDemo({super.key});
//   static const asChild = Text("""
//   item1
//   item2
//   item3
//   item4
//   item5
//   item6
//   item7
//   item8
//   item9
//   item10
//   item11
//   item12
//   item13
//   item14
//   item15
//   item16
//   item17
//   item18
//   item19
//   item20
//   item21
//   item22
//   item23
//   item24
//   item25
//   item26
//   item27
//   item28
//   item29
//   item30
//   item31
//   item32
//   item33
//   item34
//   item35
//   item36
//   item37
//   item38
//   item39
//   item40
//   item41
//   item42
//   item43
//   item44
//   item45
//   item46
//   item47
//   item48
//   item49
//   item50
// """);
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 9,
//       child: Scaffold(
//           appBar: AppBar(
//             bottom: const TabBar(
//               labelColor: Colors.orange,
//               labelStyle: TextStyle(height: 2),
//               isScrollable: true,
//               dividerColor: Color.fromARGB(255, 255, 77, 151),
//               indicatorPadding: EdgeInsets.all(-5.0),
//               indicatorColor: Colors.lime,
//               indicatorWeight: 5.0,
//               padding: EdgeInsets.only(bottom: 15),
//               splashBorderRadius: BorderRadius.all(Radius.elliptical(50, 50)),
//               splashFactory: NoSplash.splashFactory,
//               unselectedLabelColor: Color.fromARGB(255, 29, 29, 27),
//               tabs: [
//                 Text("首页"),
//                 Text("个人中心"),
//                 Text("A3"),
//                 Text("A4"),
//                 Text("A5"),
//                 Text("A6"),
//                 Text("A7"),
//                 Text("A8"),
//                 Text("A9"),
//               ],
//             ),
//             title:
//                 const Text('search()---------------------------------------'),
//           ),
//           body: TabBarView(
//             children: [
//               ListView(children: const [asChild]),
//               ListView(children: const [Text("""action2"""), asChild]),
//               ListView(children: const [Text("""action3"""), asChild]),
//               ListView(children: const [Text("""action4"""), asChild]),
//               ListView(children: const [Text("""action5"""), asChild]),
//               ListView(children: const [Text("""action6"""), asChild]),
//               ListView(children: const [Text("""action7"""), asChild]),
//               ListView(children: const [Text("""action8"""), asChild]),
//               ListView(children: const [Text("""action9"""), asChild]),
//             ],
//           )),
//     );
//   }
// }

// // 测试 NestedScrollView
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   static const String _title = 'Flutter Code Sample';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // theme: ThemeData(
//       //   primarySwatch: Colors.red,
//       // ),
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSwatch().copyWith(
//           secondary: Colors.red,
//         ),
//         textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.purple)),
//       ),
//       debugShowCheckedModeBanner: false,
//       title: _title,
//       home: const MyStatelessWidget(),
//     );
//   }
// }

// class MyStatelessWidget extends StatelessWidget {
//   const MyStatelessWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<String> tabs = <String>[
//       'Tab 1',
//       'Tab 22342 所发生的',
//       'Tab 3',
//       'Tab 4',
//       'Tab 5',
//       'Tab 6',
//       'Tab7',
//       'Tab 8',
//       'Tab 9'
//     ];
//     return DefaultTabController(
//       length: tabs.length, // This is the number of tabs.
//       child: Scaffold(
//         backgroundColor: Colors.greenAccent,
//         body: NestedScrollView(
//           headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//             return <Widget>[
//               SliverOverlapAbsorber(
//                 handle:
//                     NestedScrollView.sliverOverlapAbsorberHandleFor(context),
//                 sliver: SliverAppBar(
//                   expandedHeight: 104.1,
//                   elevation: 8,
//                   forceElevated: innerBoxIsScrolled,
//                   title:
//                       const Text('Books'), // This is the title in the app bar.
//                   pinned: true,
//                   bottom: TabBar(
// // indicatorSize: TabBarIndicatorSize.tab,
//                     indicatorSize: TabBarIndicatorSize.label,
//                     isScrollable: true,
//                     tabs: tabs.map((String name) => Tab(text: name)).toList(),
//                   ),
//                 ),
//               ),
//             ];
//           },
//           body: TabBarView(
//             children: tabs.map((String name) {
//               return SafeArea(
//                 top: false,
//                 bottom: false,
//                 child: Builder(
//                   builder: (BuildContext context) {
//                     return CustomScrollView(
//                       key: PageStorageKey<String>(name),
//                       slivers: <Widget>[
//                         SliverOverlapInjector(
//                           handle:
//                               NestedScrollView.sliverOverlapAbsorberHandleFor(
//                                   context),
//                         ),
//                         SliverPadding(
//                           padding: const EdgeInsets.all(0.0),
//                           // padding: const EdgeInsets.all(8.0),
//                           sliver: SliverFixedExtentList(
//                             itemExtent: 48.0,
//                             delegate: SliverChildBuilderDelegate(
//                               (BuildContext context, int index) {
//                                 return ListTile(
//                                   title: Text('Item $index'),
//                                 );
//                               },
//                               childCount: 30,
//                             ),
//                           ),
//                         ),
//                       ],
//                     );
//                   },
//                 ),
//               );
//             }).toList(),
//           ),
//         ),
//       ),
//     );
//   }
// }

// 测试 NavigationBar
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => {
      // debugRepaintRainbowEnabled = true,
      runApp(const ExampleApp())
    };

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  NavigationBarThemeData _naviBarThemeData() {
    late MaterialStateProperty<IconThemeData?> iconThemeData;
    late MaterialStateProperty<TextStyle?> labelTextStyle;

    iconThemeData =
        MaterialStateProperty.resolveWith((Set<MaterialState> states) {
      if (states.isNotEmpty) {
        return const IconThemeData(
            // size: 24,
            // color: Colors.amber
            );
      } else if (states.contains(MaterialState.selected)) {
        //没有选中的状态下state为空
        return const IconThemeData(
            // size: 24,
            // color: Colors.red
            );
      }
      return null;
    });

    labelTextStyle =
        MaterialStateProperty.resolveWith((Set<MaterialState> states) {
      if (states.isEmpty) {
        //没有选中的状态下state为空
        return const TextStyle(
          color: Colors.red,
          // fontSize: 24
        );
      } else if (states.contains(MaterialState.selected)) {
        return const TextStyle(
          color: Colors.amber,
          // fontSize: 24
        );
      }
      return null;
    });

    return NavigationBarThemeData(
        iconTheme: iconThemeData, labelTextStyle: labelTextStyle);
  }

  final List<String> tabs = <String>[
    'Tab 1',
    'Tab 2',
    'Tab 3',
    'Tab 4',
    'Tab 5',
    'Tab 6',
    'Tab 7',
    'Tab 8',
    'Tab 9'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          // navigationBarTheme: _naviBarThemeData(),
          navigationBarTheme: const NavigationBarThemeData(
            backgroundColor: Colors.black12,
            labelTextStyle:
                MaterialStatePropertyAll(TextStyle(color: Colors.white)),
          ),
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.black12,
          scrollbarTheme: const ScrollbarThemeData(
            thumbVisibility: MaterialStatePropertyAll(
                true), // 默认不显示，鼠标移上去开启此项才显示，开启此项，鼠标移不移上去都显示
            trackVisibility:
                MaterialStatePropertyAll(true), // 默认不显示，thumbVisibility开启时此项才显示
            thumbColor: MaterialStatePropertyAll(Colors.blue), // 滚动条颜色
            trackColor: MaterialStatePropertyAll(Colors.yellow), // 滚动槽颜色
            trackBorderColor:
                MaterialStatePropertyAll(Colors.orange), // 滚动槽边框颜色
            thickness: MaterialStatePropertyAll(8), // 滚动条宽度
          ),
        ),
        home: Scaffold(
          // appBar: AppBar(
          //   title: const Text('TextPage '),
          //   backgroundColor: Colors.transparent,
          // ),
          bottomNavigationBar: NavigationBar(
            animationDuration: const Duration(milliseconds: 100),
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            selectedIndex: currentPageIndex,
            destinations: const <Widget>[
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
          body: <Widget>[
            DefaultTabController(
              length: tabs.length, // This is the number of tabs.
              child: Scaffold(
                body: NestedScrollView(
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) {
                    return <Widget>[
                      SliverOverlapAbsorber(
                        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                            context),
                        sliver: SliverAppBar(
                          expandedHeight: 104.1,
                          elevation: 8,
                          forceElevated: innerBoxIsScrolled,
                          title: const Text(
                              'Books'), // This is the title in the app bar.
                          pinned: true,
                          actions: <Widget>[
                            IconButton(
                              icon: const Icon(Icons.add_circle),
                              tooltip: 'Add new entry',
                              onPressed: () {
                                print("add_circle");
                              },
                            ),
                          ],
                          bottom: TabBar(
                            isScrollable: true,
                            tabs: tabs
                                .map((String name) => Tab(text: name))
                                .toList(),
                          ),
                        ),
                      ),
                    ];
                  },
                  body: TabBarView(
                    children: tabs.map((String name) {
                      return SafeArea(
                        top: false,
                        bottom: false,
                        child: Builder(
                          builder: (BuildContext context) {
                            return CustomScrollView(
                              key: PageStorageKey<String>(name),
                              slivers: <Widget>[
                                SliverOverlapInjector(
                                  handle: NestedScrollView
                                      .sliverOverlapAbsorberHandleFor(context),
                                ),
                                SliverPadding(
                                  padding: const EdgeInsets.all(0.0),
                                  // padding: const EdgeInsets.all(8.0),
                                  sliver: SliverFixedExtentList(
                                    itemExtent: 48.0,
                                    delegate: SliverChildBuilderDelegate(
                                      (BuildContext context, int index) {
                                        return ListTile(
                                          title: Text('Item $index'),
                                        );
                                      },
                                      childCount: 30,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.cyan,
              alignment: Alignment.center,
              child: const Text('Page 2'),
            ),
            Container(
              color: Colors.orange,
              alignment: Alignment.center,
              child: const Text('Page 3'),
            ),
            Container(
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text('Page 4'),
            ),
          ][currentPageIndex],
        ));
  }
}
