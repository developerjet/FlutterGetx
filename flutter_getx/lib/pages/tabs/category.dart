import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_router/controllers/counterPage.dart';
class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  //获取计数器实例
  CounterController counterController = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          // 首页数据共享
          child: Obx(() => Text("分类控制器计数：${counterController.counter}",
              style: Theme.of(context).textTheme.headlineLarge)),
        ),
        SizedBox(height: 20),
        ElevatedButton(
            onPressed: () {
              counterController.dec();
            },
            child: Text("计数器减一")),
        SizedBox(height: 20),
        ElevatedButton(
            onPressed: () {
              Get.toNamed("/shop", arguments: {"id": "2024"});
            },
            child: Text("跳转到Shop共享数据")),
      ],
    )));
  }
}
