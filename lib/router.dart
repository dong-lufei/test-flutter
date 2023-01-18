// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//       routes: {
//         "./home": (context) => const MyHomePage(),
//         "./detail": (context) => const DetailPage()
//       },
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.pink,
//       child: Center(
//           child: GestureDetector(
//         child: const Text("点我-MyHomePage"),
//         onTap: () => {
//           // print("用户点击了")
//           Navigator.pushNamed(context, "./detail")
//         },
//       )),
//     );
//   }
// }

// class DetailPage extends StatelessWidget {
//   const DetailPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.purple,
//       child: Center(
//           child: GestureDetector(
//         child: const Text("点我-DetailPage"),
//         onTap: () => Navigator.pop(context),
//       )),
//     );
//   }
// }
