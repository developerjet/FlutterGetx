import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        SizedBox(height: 40),
        ElevatedButton(
            onPressed: () {
              Get.toNamed("/login");
            },
            child: Text("登录")),
        SizedBox(height: 40),
        ElevatedButton(
            onPressed: () {
              Get.toNamed("/registerFirst");
            },
            child: Text("注册")),
        SizedBox(height: 40),
        ElevatedButton(
            onPressed: () {
              Get.toNamed("/shop", arguments: {"id": "2024"});
            },
            child: Text("Shop路由传值-中间件演示")),
      ],
    ));
  }
}
