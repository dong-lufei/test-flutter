import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "dlfFlutter",
    home: MyApp(),
  ));
}

// 产品
class Product {
  late String title; // 产品标题
  late String description; // 产品描述
  Product(this.title, this.description); // 构造函数
}

// 产品列表
class ProductList extends StatelessWidget {
  // 产品列表
  final List<Product> products;
  // 构造函数 必填的参数
  const ProductList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, i) {
          return ListTile(
              title: Text(products[i].title),
              onTap: () async {
                // # result 【接收路由子页面回传过来的数据】
                var result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            // #【传递数据】：通过组件参数传递 组件参数 product 的动态数据
                            ProductDetail(product: products[i])));
                //  底部弹窗
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Column(
                  children: [
                    Text(">>> $result <<<"),
                    Image.asset("my_assets/OIP-C.jpg")
                  ],
                )));
              });
        },
        itemCount: products.length);
  }
}

// 产品详情
class ProductDetail extends StatelessWidget {
  //  product 属性：接收数据的参数 接收调用此组件的地方传给它的数据
  final Product product;
  // 产品详情的构造函数
  const ProductDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // # 【接收数据】：
        title: Text(product.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text("详情 ${product.description}"),
            ElevatedButton(
                onPressed: () {
                  // # pop 方法第2个参数可以【回传数据】
                  Navigator.pop(context, '回传数据：${product.description}');
                },
                child: Icon(
                  Icons.star,
                  color: Colors.red[500],
                ))
            // child: const Text("返回并传参过去"))
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyNavigatorData();
}

class _MyNavigatorData extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("我是页面 1 的标题")),
        body: ProductList(
            products: List.generate(
                20,
                (index) => Product("我是 Product title$index",
                    "我是 Product description $index"))));
  }
}
