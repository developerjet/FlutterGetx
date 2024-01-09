import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _editingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("用户登录"), backgroundColor: Colors.red),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(10)),
            Container(
              height: 70,
              padding: EdgeInsets.all(10),
              child: TextField(
                focusNode: _focusNode,
                controller: _editingController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  // Handle changes in the text field
                  // print('Input: $value');
                },
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  _focusNode.unfocus();
                  if (GetUtils.isEmail(_editingController.text)) {
                    _loginAction();
                  } else {
                    Get.snackbar("提示", "请输入正确的邮箱",
                        backgroundColor: Colors.blue);
                  }
                },
                child: Text("验证邮箱")),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  _focusNode.unfocus();
                  if (GetUtils.isPhoneNumber(_editingController.text)) {
                    _loginAction();
                  } else {
                    Get.snackbar("提示", "请输入正确的手机号",
                        backgroundColor: Colors.blue);
                  }
                },
                child: Text("验证手机号")),
            SizedBox(height: 40),
            ElevatedButton(
                onPressed: () {
                  // 收起键盘
                  _focusNode.unfocus();
                  if (_editingController.text.length == 0) {
                    Get.snackbar("提示", "请输入登录信息", backgroundColor: Colors.blue);
                    return;
                  }

                  _loginAction();
                },
                child: Text("执行登录"))
          ],
        ),
      ),
    );
  }

  // 执行登录
  _loginAction() {
    Get.back();
    Get.snackbar("温馨提示", "已执行登录", duration: Duration(seconds: 2));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _focusNode.dispose();
    _editingController.dispose();
    super.dispose();
  }
}
