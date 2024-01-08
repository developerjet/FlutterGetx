import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterSecondPage extends StatefulWidget {
  const RegisterSecondPage({ Key? key }) : super(key: key);

  @override
  _RegisterSecondPageState createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("用户注册"), backgroundColor: Colors.red),
      body: Center(child: Column(
        children: [
          SizedBox(height: 40),
          Text("注册第二步"),
          SizedBox(height: 40),
          ElevatedButton(onPressed: () {
            Get.toNamed("/registerThird");
          }, child: Text("下一步"))
        ],
      ),),
    );
  }
}