import 'package:get/get.dart';

import '../pages/tabs.dart';
import '../pages/shop.dart';
import '../pages/user/login.dart';
import '../pages/user/registerFirst.dart';
import '../pages/user/registerSecond.dart';
import '../pages/user/registerThird.dart';
import '../middlewares/middleware.dart';
import '../pages/shop.dart';

class AppPage {
  // 路由配置
  static final routers = [
    // TabBar
    GetPage(name: "/", page: () => const Tabs()),

    // 去商店
    GetPage(
        name: "/shop",
        page: () => const ShopPage(),
        // middlewares: [AppMiddleWare()]
        ),

    // 去登录
    GetPage(name: "/login", page: () => const LoginPage()),

    // 去注册 - 第一步
    GetPage(name: "/registerFirst", page: () => const RegisterFirstPage()),

    // 去注册 - 第二步
    GetPage(name: "/registerSecond", page: () => const RegisterSecondPage()),

    // 去注册 - 第三步
    GetPage(name: "/registerThird", page: () => const RegisterThirdPage()),
  ];
}
