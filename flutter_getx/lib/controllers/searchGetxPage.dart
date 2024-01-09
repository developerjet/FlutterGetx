import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchGetxController extends GetxController {
  RxList hotList = [].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    print("onInit===Search控制器初始化");
    getHotList();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    print("onReady===Search控制器加载完成");
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    print("onClose===Search控制器销毁");
    super.onClose();
  }

  void getHotList() {
    hotList.add("添加搜索商品");
    update();
  }
}
