import 'package:flutter/material.dart';
import 'pages/index.dart';
import 'pages/company.dart';
import 'pages/school.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> items = [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: '首页',
      ),
      BottomNavigationBarItem(
        // 未选中时的 icon，如果未设置激活iocn选项，则值也是此
        icon: const Icon(Icons.business),
        label: '公司',
        // 选中时的icon
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

    const List<Widget> pages = [MyIndex(), MyCompany(), MySchool()];

    int curPageIndex = 1;
    return Scaffold(
        body: pages[curPageIndex],
        // 底部导航限制2-5个
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: curPageIndex,
          // 选中后的 bar 颜色
          selectedItemColor: Colors.orange,
          // 未选中的 bar 颜色
          unselectedItemColor: Colors.grey,
          // 未选中的 bar 字体大小
          unselectedFontSize: 12,
          items: items,
          // 只显示图标不显示文字
          // type: BottomNavigationBarType.shifting,
          type: BottomNavigationBarType.fixed,
          onTap: (index) => {
            print("index: $index"),
            setState(() {
              curPageIndex = index;
            }),
            print("pages:${pages[curPageIndex]}"),
          },
        ));
  }
}
