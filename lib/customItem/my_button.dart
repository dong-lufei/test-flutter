// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        ElevatedButton(
          onPressed: () => print("ElevatedButton"),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red)),
          child: const Text("ElevatedButton"),
        ),
        // 带图标的按钮
        ElevatedButton.icon(
          icon: const Icon(Icons.send),
          label: const Text("发送"),
          onPressed: () => print("ElevatedButton.icon"),
        ),
        TextButton(
          child: const Text("TextButton"),
          onPressed: () => print("TextButton"),
        ),
// 带图标的文本按钮
        TextButton.icon(
          icon: const Icon(Icons.info),
          label: const Text("详情"),
          onPressed: () => print("TextButton.icon"),
        ),
        OutlinedButton(
          child: const Text("OutlinedButton"),
          onPressed: () => print("OutlinedButton"),
        ),
        IconButton(
          icon: const Icon(Icons.thumb_up),
          onPressed: () => print("IconButton"),
        )
      ]),
    );
  }
}
