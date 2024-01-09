import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_router/controllers/listDataPage.dart';
import 'package:getx_router/controllers/counterPage.dart';

// 实现Bindings的接口
class AllControllerBinding implements Bindings {

  @override
  void dependencies() {
    // 懒初始化
    Get.lazyPut<CounterController>(() => CounterController());
    Get.lazyPut<ListController>(() => ListController());
  }
}
