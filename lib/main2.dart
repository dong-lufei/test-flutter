// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: MyApp(),
    ));
// void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      drawer: media.width < 600
          ? const Drawer(
              child: Center(
                child: Text("Menu-drawer"),
              ),
            )
          : null,
      body: Row(
        children: [
          media.width > 600
              ? const Flexible(
                  flex: 1,
                  child: Center(
                    child: Text("Menu-body"),
                  ))
              : Container(),
          Flexible(
            flex: 3,
            child: Center(
                child: Text(
              "Size ${media.width} * ${media.height}",
              style: Theme.of(context).textTheme.titleMedium,
            )),
          ),
        ],
      ),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Menu"),
    );
  }
}

// void main() {
//   Map obj = {"董": 123, "": []};

//   print(obj);
//   print(obj["abc"]);
//   if (obj["abc"].toString() == "null") {
//     print(123);
//   }
//   obj.map((key, value) {
//     print("rrr ${key.toLowerCase()}");
//     return MapEntry(key, value);
//   });
// }
