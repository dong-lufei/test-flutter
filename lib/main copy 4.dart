// main.dart
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
          primarySwatch: Colors.deepPurple,
        ),
        home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            centerTitle: false,
            title: const Text('大前端之旅'),
            actions: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
            ],
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search for something',
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.camera_alt)),
                  ),
                ),
              ),
            ),
          ),
          // Other Sliver Widgets
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 400,
                child: Center(
                  child: Text(
                    'This is an awesome shopping platform',
                  ),
                ),
              ),
              Container(
                  color: Colors.purple,
                  width: 100,
                  height: 100,
                  child: const Image(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.kug_NNr258Z6Pux2mXTVRwHaL8?w=228&h=367&c=7&o=5&pid=1.7"),
                    fit: BoxFit.scaleDown,
                    color: Colors.orange,
                    colorBlendMode: BlendMode.difference,
                    repeat: ImageRepeat.repeatX,
                  ))
              // border: Border.all(
              //     color: const Color(0xff008c8c),
              //     width: 10,
              //     strokeAlign: BorderSide.strokeAlignCenter))),
            ]),
          ),
        ],
      ),
    );
  }
}
