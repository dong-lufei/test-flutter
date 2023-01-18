import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    // return Center(
    //     child: ListView(
    //   shrinkWrap: true,
    //   padding: const EdgeInsets.all(20.0),
    //   // 滚动方向，默认垂直方向
    //   scrollDirection: Axis.horizontal,
    //   children: const [
    //     Text(
    //       'I\'m dedicating every day to you',
    //       style: TextStyle(letterSpacing: 2),
    //     ),
    //     Text(
    //       'Domestic life was never quite my style',
    //       style: TextStyle(letterSpacing: 2),
    //     ),
    //     Text(
    //       'When you smile, you knock me out, I fall apart',
    //       style: TextStyle(letterSpacing: 2),
    //     ),
    //   ],
    // ));
    // return ListView.builder(
    //   padding: const EdgeInsets.all(10.0),
    //   // itemCount: 100, // 不设置固定数量的话就无限
    //   // itemExtent: 20.0, // 强制高度为50.0
    //   itemBuilder: (BuildContext context, int index) {
    //     // return Text("${index + 1}");
    //     // 有点自带内边距或外边距
    //     return ListTile(
    //       title: Text("title:${index + 1}"),
    //       subtitle: Text("subtitle:${index + 1}"),
    //       tileColor: Colors.blue[100],
    //       selectedTileColor: Colors.green,
    //       selectedColor: Colors.white,
    //       selected: true,
    //       // 标题和副标题小部件顶部和底部的最小填充。
    //       minVerticalPadding: 25.0,
    //       // 标题后显示的小部件。
    //       trailing: const Icon(Icons.more_vert),
    //       // dense: true, // 变小了一点,此列表平铺是否是垂直密集列表的一部分。
    //       isThreeLine: true,
    //       enabled: true, // 此列表互动程序是否是交互式的。
    //       // onTap: () {
    //       //   Navigator.pop(context);
    //       // },
    //     );
    //   },
    // );
// // 分割线
//     Widget divider1 = const Divider(
//       color: Colors.blue,
//     );
//     Widget divider2 = const Divider(color: Colors.green);
//     return ListView.separated(
//       itemCount: 100,
// //列表项构造器
//       itemBuilder: (BuildContext context, int index) {
//         return ListTile(
//           title: Text("title ${index + 1}"),
//           subtitle: Text("subtitle ${index + 1}"),
//         );
//       },
// //分割器构造器
//       separatorBuilder: (BuildContext context, int index) {
//         return (index + 1) % 2 == 0 ? divider1 : divider2;
//       },
//     );
    //   return GridView(
    //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //           crossAxisCount: 4, // 交叉轴网格列数
    //           childAspectRatio: 1.0 //宽高比为1时，子widget
    //           ),
    //       children: const <Widget>[
    //         Icon(Icons.ac_unit),
    //         Icon(Icons.airport_shuttle),
    //         Icon(Icons.all_inclusive),
    //         Icon(Icons.beach_access),
    //         Icon(Icons.cake),
    //         Icon(Icons.free_breakfast)
    //       ]);

    // return GridView.count(
    //   primary: false,
    //   padding: const EdgeInsets.all(20),
    //   crossAxisCount: 3,
    //   // 列空隙
    //   crossAxisSpacing: 10,
    //   // 行空隙
    //   mainAxisSpacing: 10,
    //   // 宽高比
    //   childAspectRatio: 2.0,
    //   children: <Widget>[
    //     Container(
    //       padding: const EdgeInsets.all(8),
    //       color: Colors.teal[100],
    //       child: const Text("He'd have you all unravel at the"),
    //     ),
    //     Container(
    //       padding: const EdgeInsets.all(8),
    //       color: Colors.teal[200],
    //       child: const Text('Heed not the rabble'),
    //     ),
    //     Container(
    //       padding: const EdgeInsets.all(8),
    //       color: Colors.teal[300],
    //       child: const Text('Sound of screams but the'),
    //     ),
    //     Container(
    //       padding: const EdgeInsets.all(8),
    //       color: Colors.teal[400],
    //       child: const Text('Who scream'),
    //     ),
    //     Container(
    //       padding: const EdgeInsets.all(8),
    //       color: Colors.teal[500],
    //       child: const Text('Revolution is coming...'),
    //     ),
    //     Container(
    //       padding: const EdgeInsets.all(8),
    //       color: Colors.teal[600],
    //       child: const Text('Revolution, they...'),
    //     ),
    //   ],

//     return GridView.builder(
//         itemCount: 15,
//         // 控制子元素布局的委托
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           // 列空隙
//           crossAxisSpacing: 10,
//           // 行空隙
//           mainAxisSpacing: 10,
//           // 宽高比
//           childAspectRatio: 1.0,
// // 主轴之间的大小
// // mainAxisExtent: 120,
//         ),
//         itemBuilder: (BuildContext context, int index) {
//           return Card(
//             color: Colors.amber,
//             child: Center(child: Text('${index + 1}')),
//           );
//         });

    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(20),
          sliver: SliverGrid.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.green[100],
                child: const Text("He'd have you all unravel at the"),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.green[200],
                child: const Text('Heed not the rabble'),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.green[300],
                child: const Text('Sound of screams but the'),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.green[400],
                child: const Text('Who scream'),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.green[500],
                child: const Text('Revolution is coming...'),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.green[600],
                child: const Text('Revolution, they...'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
