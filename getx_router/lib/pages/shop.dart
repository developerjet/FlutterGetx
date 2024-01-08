import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //获取上个界面传值
    print(Get.arguments);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("店铺"), backgroundColor: Colors.red),
      body: Center(
          child: Column(
        children: [
          SizedBox(height: 50),
          Text("店铺页面", style: TextStyle(color: Colors.black)),
          SizedBox(height: 50),
          Text(
            "店铺ID：" + Get.arguments["id"] as String,
            style: TextStyle(color: Colors.blue),
          )
        ],
      )),
    );
  }
}
