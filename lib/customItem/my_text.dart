// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    // // # 使用 Material Design的字体图标
    // String icons = "";
    // // accessible: 0xe03e
    // icons += "\uE03e";
    // // error:  0xe237
    // icons += " \uE237";
    // // fingerprint: 0xe287
    // icons += " \uE287";

    return Container(
      // alignment: Alignment.center,
      child: Text(
        "卢卡斯的积分路上看见我看了解放昆仑山大家是扩大飞机离开七九二楼123456789" * 20,
        // 文本的对齐方式；可以选择左对齐、右对齐还是居中
        // textAlign: TextAlign.center,
        // 指定文本显示的最大行数，默认情况下，文本是自动折行的，如果指定此参数，则文本最多不会超过指定的行。
        maxLines: 3,
        // 如果有多余的文本，可以通过overflow来指定截断方式，默认是直接截断
        overflow: TextOverflow.ellipsis,
        // 代表文本相对于当前字体大小的缩放因子，相对于去设置文本的样式style属性的fontSize。该属性的默认值可以通过MediaQueryData.textScaleFactor获得，如果没有MediaQuery，那么会默认值将为1.0
        // textScaleFactor: 1.5, // 影响布局空间 间距
        // semanticsLabel: icons,
        // style: TextStyle(
        //   color: Colors.teal,
        //   fontFamily: "Courier", // "MaterialIcons",
        //   fontSize: 24.0,
        //   fontWeight: FontWeight.bold,
        //   fontStyle: FontStyle.italic, // 斜体
        //   height: 2.0, // 行高
        //   background: Paint()..color = Colors.yellow,
        //   decoration: TextDecoration.lineThrough, // 删除线
        //   decorationStyle: TextDecorationStyle.dashed,
        //   decorationColor: Colors.red, // 线颜色
        //   letterSpacing: 1.0, // 字间距
        // )
      ),
    );
  }
}
