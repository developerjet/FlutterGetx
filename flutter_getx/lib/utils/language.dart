import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'zh_CN': {
          'tab_home_title': '首页',
          'tab_class_title': '分类',
          'tab_message_title': '消息',
          'tab_setting_title': '设置',
          'tab_user_title': '用户',
        },
        'en_US': {
          'tab_home_title': 'Home',
          'tab_class_title': 'Category',
          'tab_message_title': 'Message',
          'tab_setting_title': 'Setting',
          'tab_user_title': 'User',
        }
      };
}
