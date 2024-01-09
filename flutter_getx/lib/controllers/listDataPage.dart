import 'package:get/get.dart';

class ListController extends GetxController {
  // 响应式变量数组
  RxList list = [].obs;

  void add(value) {
    list.add(value);
    update();
  }
}
