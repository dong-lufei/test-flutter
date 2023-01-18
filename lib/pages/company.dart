import 'package:flutter/material.dart';

class MyCompany extends StatefulWidget {
  const MyCompany({super.key});

  @override
  State<MyCompany> createState() => _MyCompanyState();
}

class _MyCompanyState extends State<MyCompany> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("招聘简章"),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
          child: Column(children: [
            Card(
              elevation: 20.0,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 15.0, right: 15.0),
                        child: Container(
                          color: Colors.red,
                          width: 50,
                          height: 50,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "xx公司",
                          style: TextStyle(fontSize: 13.0, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          left: 5,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "已上市",
                              style:
                                  TextStyle(fontSize: 13.0, color: Colors.grey),
                            ),
                            Text(
                              "1000人以上",
                              style:
                                  TextStyle(fontSize: 13.0, color: Colors.grey),
                            ),
                            Text(
                              "金融公司",
                              style:
                                  TextStyle(fontSize: 13.0, color: Colors.grey),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  // 分界线
                  const Divider(
                    // color: Colors.red,
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 5, left: 10, right: 10, bottom: 10),
                        child: Text(
                          "热招职位：前端开发、JAVA后端、Python等",
                          style: TextStyle(fontSize: 13.0, color: Colors.blue),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 8,
                        ),
                        child: Container(
                          color: Colors.blue,
                          width: 20,
                          height: 20,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ])),
    );
  }
}
