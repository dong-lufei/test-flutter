import 'package:flutter/material.dart';

class MyIndex extends StatefulWidget {
  const MyIndex({super.key});

  @override
  State<MyIndex> createState() => _MyIndexState();
}

class _MyIndexState extends State<MyIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("MyIndex")),
        body: Container(
            alignment: Alignment.center,
            child: Text(
              "卢卡斯的积分路上看见我看了解放昆仑山大家是扩大飞机离开七九二楼123456789" * 2,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            )));
  }
}
