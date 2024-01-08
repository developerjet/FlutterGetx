import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/person.dart';
import '../model/animal.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 想要监听数值变化，需要在末尾机上.obs
  final RxInt _counter = RxInt(0);
  final RxString _username = "刘德华".obs;

  //响应式变量
  final RxList _list = ["张三", "李四", "王五"].obs;

  var _sex = Rx<String>("男");

  //实例化类
  var p = new Person();

  var animal = Animal("小猫", 5).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Obx(() => Text(
                // 获取数字的变化
                "${_counter.value}",
                style: Theme.of(context).textTheme.headlineLarge,
              )),
          SizedBox(),
          Obx(() {
            return Text(
              _username.value,
              style: Theme.of(context).textTheme.headlineSmall,
            );
          }),
          SizedBox(),
          Obx(() {
            return Column(
              children: _list.map((v) {
                return ListTile(title: Text(v));
              }).toList(),
            );
          }),
          SizedBox(),
          Obx(() => Text(
                _sex.value,
                style: Theme.of(context).textTheme.headlineLarge,
              )),
          SizedBox(height: 10),
          Obx(() => Text(
                p.usuername.value,
                style: Theme.of(context).textTheme.headlineLarge,
              )),
          SizedBox(height: 10),
          Obx(() => Text(
                animal.value.usuername,
                style: Theme.of(context).textTheme.headlineLarge,
              )),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _counter.value++;
          _username.value = "郭富城";
          _sex.value = "女";

          p.usuername.value = "张学友";

          animal.value.usuername = "老虎";
          animal.value =  animal.value;

          // 增加数据
          _list.add("Test$_counter");
        },
      ),
    );
  }
}
