import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_router/pages/tabs.dart';

class RegisterThirdPage extends StatefulWidget {
  const RegisterThirdPage({Key? key}) : super(key: key);

  @override
  _RegisterThirdPageState createState() => _RegisterThirdPageState();
}

class _RegisterThirdPageState extends State<RegisterThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("用户注册"), backgroundColor: Colors.red),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Text("注册第三步"),
            SizedBox(height: 40),
            ElevatedButton(
                onPressed: () {
                  // 完成注册回到我的界面
                  Get.offAll(Tabs(index: 4));
                  Get.snackbar("温馨提示", "已完成注册", duration: Duration(seconds: 2));
                },
                child: Text("完成注册"))
          ],
        ),
      ),
    );
  }
}
