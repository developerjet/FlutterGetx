import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_router/controllers/listDataPage.dart';
import 'package:getx_router/controllers/counterPage.dart';

class ShopGetxController extends GetxController {
  RxInt counter = 0.obs;

  // 首页、分类计数控制器
  CounterController counterController = Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    print("onInit===Shop控制器初始化");
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    print("onReady===Shop控制器加载完成");
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    print("onClose===Shop控制器销毁");
    super.onClose();
  }

  void inc() {
    counter.value++;
    update();
  }
}
