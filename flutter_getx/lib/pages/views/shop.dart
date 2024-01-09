import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_router/controllers/counterPage.dart';
import 'package:getx_router/controllers/shopGetxPage.dart';

// GetView底层继承自StatelessWidget
class ShopPage extends GetView<ShopGetxController> {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("店铺"), backgroundColor: Colors.red),
      body: Center(
          child: Column(
        children: [
          SizedBox(height: 20),
          Text("店铺页面", style: TextStyle(color: Colors.black)),
          SizedBox(height: 20),
          Text(
            "店铺ID：" + Get.arguments["id"] ?? "" as String,
            style: TextStyle(color: Colors.blue),
          ),
          Obx(() => Text(
                "共享首页计算器：${controller.counterController.counter.value}",
                style: TextStyle(color: Colors.blue),
              )),
          //Obx内部接收数据变化
          Obx(() => Text(
                "店铺当前计算器：${controller.counter.value}",
                style: TextStyle(color: Colors.blue),
              )),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                // 当前控制器counter加一
                controller.inc();
              },
              child: Text("shop counter + 1"))
        ],
      )),
    );
  }
}
