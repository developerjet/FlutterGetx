import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterFirstPage extends StatefulWidget {
  const RegisterFirstPage({super.key});

  @override
  _RegisterFirstPageState createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("用户注册"), backgroundColor: Colors.red),
      body: Center(child: Column(
        children: [
          SizedBox(height: 40),
          Text("注册第一步"),
          SizedBox(height: 40),
          ElevatedButton(onPressed: () {
            Get.toNamed("/registerSecond");
          }, child: Text("下一步"))
        ],
      ),),
    );
  }
}
