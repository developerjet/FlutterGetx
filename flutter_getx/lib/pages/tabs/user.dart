import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_router/controllers/listDataPage.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  // 获取List实例
  ListController listController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          color: Colors.grey,
          height: 240,
          child: // 渲染列表
              Obx(
            () => ListView.builder(
              itemCount: listController.list.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(listController.list[index] + "$index"),
                  onTap: () {
                    // Handle item tap
                    print("Tapped on: ${listController.list[index]}");
                  },
                );
              },
            ),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
            onPressed: () {
              Get.toNamed("/login");
            },
            child: Text("登录")),
        SizedBox(height: 20),
        ElevatedButton(
            onPressed: () {
              Get.toNamed("/registerFirst");
            },
            child: Text("注册")),
        SizedBox(height: 20),
        ElevatedButton(
            onPressed: () {
              Get.toNamed("/shop", arguments: {"id": "2024"});
            },
            child: Text("Shop路由传值-中间件演示")),
      ],
    ));
  }
}
