import 'package:get/get.dart';

import '../pages/tabs.dart';
import '../pages/views/shop.dart';
import '../pages/views/search.dart';
import '../pages/user/login.dart';
import '../pages/user/registerFirst.dart';
import '../pages/user/registerSecond.dart';
import '../pages/user/registerThird.dart';
import '../middlewares/middleware.dart';
import '../controllers/shopGetxPage.dart';
import '../controllers/searchGetxPage.dart';

import 'package:getx_router/binding/shopBinding.dart';
import 'package:getx_router/binding/searchBinding.dart';

class AppPage {
  // 路由配置
  static final routers = [
    // TabBar
    GetPage(name: "/", page: () => const Tabs()),

    // 去商店
    GetPage(
      name: "/shop",
      page: () => const ShopPage(),
      binding: ShopControllerBinding(), //路由绑定
      middlewares: [AppMiddleWare()] //路由鉴权
    ),

    // 去登录
    GetPage(name: "/login", page: () => const LoginPage()),

    // 去注册 - 第一步
    GetPage(name: "/registerFirst", page: () => const RegisterFirstPage()),

    // 去注册 - 第二步
    GetPage(name: "/registerSecond", page: () => const RegisterSecondPage()),

    // 去注册 - 第三步
    GetPage(name: "/registerThird", page: () => const RegisterThirdPage()),

    // 去搜索界面
    GetPage(
        name: "/search",
        binding: SearchControllerBinding(),
        page: () => const SearchPage(),
        transition: Transition.zoom),
  ];
}
