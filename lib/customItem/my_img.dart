import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // alignment: Alignment.topLeft,
          color: const Color.fromARGB(132, 189, 234, 144),
          width: 400,
          height: 400,
          // child: Image.asset("static/poster.jpg"),
          child: Image.network(
            "https://img.zcool.cn/community/01cc8b5e3bdc52a80120a895aec8f6.jpg",
            // "http://img.netbian.com/file/2017/0317/79aecd41d51320906c637399c15630ca.jpg", // web端http的url图片暂时渲染有问题
            // color: const Color.fromARGB(119, 233, 109, 190), // 渲染颜色时，不渲染上面图片
            // 父级未设置宽高  图片自适应后多出来的空间显示父级底色
            width: 300,
            height: 300,
            // 图像在布局时分配的空间方式
            fit: BoxFit.scaleDown,
            // 图片平铺
            // repeat: ImageRepeat.repeatY,
          ),
        ),
        Container(
          color: Colors.green[100]!,
          width: 700,
          height: 500,
          // decoration: BoxDecoration(
          //     // 裁圆角
          //     borderRadius: BorderRadius.circular(100),
          //     image: const DecorationImage(
          //         fit: BoxFit.fill,
          //         image: AssetImage(
          //           "static/poster.jpg",
          //         ))),
          // child: Image.asset(
          //   "static/poster.jpg",
          //   // 图片在容器内的对齐方式
          //   alignment: Alignment.topLeft,
          // ),
          child: ClipOval(
            child: Image.network(
              "https://img.zcool.cn/community/01cc8b5e3bdc52a80120a895aec8f6.jpg",
              width: 100,
              height: 100,
              fit: BoxFit.fitHeight,
            ),
          ),
        )
      ],
    );
  }
}
