// main.dart
// ignore_for_file: avoid_print

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemUiOverlayStyle systemUiOverlayStyle =
  //     const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  // SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);

  // await Firebase.initializeApp();
  // runZonedGuarded(() {
  runApp(const MyApp());
  // }, FirebaseCrashlytics.instance.recordError);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Remove the debug banner
        debugShowCheckedModeBanner: false,
        title: '大前端之旅',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: const HomePage());
  }
}

// Home Page
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('大前端之旅'),
        actions: [
          // Navigate to the Search Screen
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const SearchPage())),
              icon: const Icon(Icons.search))
        ],
      ),
    );
  }
}

// Search Page
// class SearchPage extends StatelessWidget {
//   const SearchPage({Key? key}) : super(key: key);

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<SearchPage> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // The search area here
          title: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: TextField(
// // 让TextField内容实现左右居中，
// textAlign: TextAlign.center,
            controller: _controller,
            decoration: InputDecoration(
// // 输入框左侧外 图标
// icon: const Icon(Icons.person),
// 输入框左侧内 图标
              prefixIcon: const Icon(Icons.search),
// 输入框右侧内 图标
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  _controller.clear();
                },
              ),
              hintText: '搜索...',
// contentPadding 和 border 的设置是为了让 TextField 内容实现上下居中
              contentPadding: const EdgeInsets.all(0),
              // border: Border.all(
              //   color: const Color(0xFF000000),
              //   width: 1.0,
              //   style: BorderStyle.solid,
              //   strokeAlign: BorderSide.strokeAlignInside,
              // ),
              border: const OutlineInputBorder(borderSide: BorderSide.none),
            ),
            onSubmitted: (value) {
              print('TextField：$value');
              _controller.clear();
            },
          ),
        ),
      )),
    );
  }
}
