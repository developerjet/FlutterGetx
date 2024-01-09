import 'package:get/get.dart';

class CounterController extends GetxController {
  // 响应式变量
  RxInt counter = 0.obs;

  void inc() {
    counter.value++;
    update();
  }

  void dec() {
    counter.value--;
    update();
  }
}
