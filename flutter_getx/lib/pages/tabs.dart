import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_router/pages/tabs/home.dart';
import 'package:getx_router/pages/tabs/category.dart';
import 'package:getx_router/pages/tabs/message.dart';
import 'package:getx_router/pages/tabs/setting.dart';
import 'package:getx_router/pages/tabs/user.dart';

class Tabs extends StatefulWidget {
  final int index;
  const Tabs({super.key, this.index = 0});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  late int _currentIndex;

  final List<Widget> _pages = [
    HomePage(),
    CategoryPage(),
    MessagePage(),
    SettingPage(),
    UserPage(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _currentIndex = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 顶部导航栏
      appBar: AppBar(
        title: Text("Getx router"),
        backgroundColor: Colors.red,
      ),
      // 控制器
      body: _pages[_currentIndex],
      // 底部导航栏
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.red, //选中的颜色
          // iconSize:35,           //底部菜单大小
          currentIndex: _currentIndex, //第几个菜单选中
          type: BottomNavigationBarType.fixed, //如果底部有4个或者4个以上的菜单的时候就需要配置这个参数
          onTap: (index) {
            //点击菜单触发的方法
            //注意
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'tab_home_title'.tr),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: 'tab_class_title'.tr),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: 'tab_message_title'.tr),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'tab_setting_title'.tr),
            BottomNavigationBarItem(
                icon: Icon(Icons.people), label: 'tab_user_title'.tr)
          ]),
      //加号按钮
      floatingActionButton: Container(
        height: 60, //调整FloatingActionButton的大小
        width: 60,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.only(top: 5), //调整FloatingActionButton的位置
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: FloatingActionButton(
            backgroundColor: _currentIndex == 2 ? Colors.red : Colors.grey[400],
            child: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                _currentIndex = 2;
              });
            }),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, //配置浮动按钮的位置
    );
  }
}
