import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/shopGetxPage.dart';

// 实现Bindings的接口
class ShopControllerBinding implements Bindings {
  @override
  void dependencies() {
    // Shop懒加载
    Get.lazyPut<ShopGetxController>(() => ShopGetxController());
  }
}
