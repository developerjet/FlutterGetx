import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("用户登录"), backgroundColor: Colors.red),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("登录跳转演示,执行登录后返回到上一个页面"),
            SizedBox(height: 40),
            ElevatedButton(onPressed: () {
              Get.back();
              Get.snackbar("温馨提示", "已执行登录", duration: Duration(seconds: 2));
            }, child: Text("执行登录"))
          ],
        ),
      ),
    );
  }
}
