import 'package:flutter/material.dart';
import 'package:getx_router/pages/tabs.dart';
import 'package:getx_router/routers/routers.dart';
import 'package:get/get.dart';
import './binding/binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultGlobalState: true,
      title: "Getx router",
      initialBinding: AllControllerBinding(), //全部绑定Getx BindingController
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
          )),
      initialRoute: "/", // 配置初始路由
      getPages: AppPage.routers,
    );
  }
}
