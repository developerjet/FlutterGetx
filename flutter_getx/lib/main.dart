import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:getx_router/pages/tabs.dart';
import 'package:getx_router/routers/routers.dart';
import 'package:get/get.dart';
import './binding/binding.dart';
import './utils/language.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Locale systemLocale = ui.window.locale;

    return GetMaterialApp(
      defaultGlobalState: true,
      title: "Getx router",
      translations: Messages(), // 你的翻译
      // locale: const Locale('zh', 'CN'), // 默认设置的语言
      locale: systemLocale, //获取系统语言
      fallbackLocale: const Locale('en', 'US'), // 回调语言选项

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
