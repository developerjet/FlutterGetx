import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_router/controllers/listDataPage.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  //实例化控制器
  ListController listController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                listController.add("用户数据");
                Get.snackbar("温馨提示", "增加数据成功");
              },
              child: Text("给UserList增加数据")),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Get.toNamed('/search');
              },
              child: Text("去搜索界面")),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                _settingTheme();
              },
              child: Text("设置主题")),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                _settingLanguage();
              },
              child: Text("设置语言")),
        ],
      ),
    );
  }

  _settingTheme() {
    Get.bottomSheet(Container(
      color: Get.isDarkMode ? Colors.black87 : Colors.white,
      height: 200,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Text("主题切换",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Get.isDarkMode ? Colors.white : Colors.black87)),
          ),
          ListTile(
            leading: Icon(Icons.wb_sunny_outlined,
                color: Get.isDarkMode ? Colors.white : Colors.black87),
            title: Text("白天模式",
                style: TextStyle(
                    color: Get.isDarkMode ? Colors.white : Colors.black87)),
            onTap: () {
              Get.changeTheme(ThemeData.light());
              Get.back();
            },
          ),
          ListTile(
            leading: Icon(Icons.dark_mode,
                color: Get.isDarkMode ? Colors.white : Colors.black87),
            title: Text("夜间模式",
                style: TextStyle(
                    color: Get.isDarkMode ? Colors.white : Colors.black87)),
            onTap: () {
              Get.changeTheme(ThemeData.dark());
              Get.back();
            },
          ),
        ],
      ),
    ));
  }

  _settingLanguage() {
    Get.bottomSheet(Container(
      color: Get.isDarkMode ? Colors.black87 : Colors.white,
      height: 200,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Text("设置语言",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Get.isDarkMode ? Colors.white : Colors.black87)),
          ),
          ListTile(
            title: Text("中文",
                style: TextStyle(
                    color: Get.isDarkMode ? Colors.white : Colors.black87)),
            onTap: () {
              //切换中文
              Get.updateLocale(Locale('zh', 'CN'));
              Get.back();
            },
          ),
          ListTile(
            title: Text("英文",
                style: TextStyle(
                    color: Get.isDarkMode ? Colors.white : Colors.black87)),
            onTap: () {
              //切换英文
              Get.updateLocale(Locale('en', 'CN'));
              Get.back();
            },
          ),
        ],
      ),
    ));
  }
}
