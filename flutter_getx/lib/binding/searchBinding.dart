import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/searchGetxPage.dart';

// 实现Bindings的接口
class SearchControllerBinding implements Bindings {
  @override
  void dependencies() {
    // Shop懒加载
    Get.lazyPut<SearchGetxController>(() => SearchGetxController());
  }
}
