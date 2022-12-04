import 'package:get/get.dart';

class Messages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'zh_Hans_CN': {
          'title1': "Flutter 测试界面",
          //个人中心
          'member_setting': "设置",
          'day_themes': "白天",
          'night_themes': '夜晚',
          'push_message': "消息推送",
          'isopend': "已开启",
          'isclosed': "已关闭",
          'auto_message_managment': "自动订阅管理",
          'open_card_tile': "开通畅享卡",
          'open_card_button': "享受多重服务>>"
        }, //中文
        'zh_CN': {
          'title1': "Flutter 测试界面",
          //member center
          'member_setting': "设置",
          'day_themes': "白天",
          'night_themes': '夜晚',
          'push_message': "消息推送",
          'isopend': "已开启",
          'isclosed': "已关闭",
          'auto_message_managment': "自动订阅管理",
          'open_card_tile': "开通畅享卡",
          'open_card_button': "享受多重服务>>"
        }, //中文2号
        'en_US': {
          'title1': "Flutter Demo Home Page",
          //member center
          'member_setting': "Setting",
          'day_themes': "daytime",
          'night_themes': 'night',
          'push_message': "Message push",
          'isopend': "opend",
          'isclosed': "closed",
          'auto_message_managment': "Auto subscription Managment",
          'open_card_tile': "Open card service",
          'open_card_button': "For More Service>>",
        }, //英文
        'de_DE': {
          'title1': "Flutter demo homPaOne",
          //member center
          'member_setting': "Setting",
          'push_message': "Message push",
          'isopend': "opend",
          'isclosed': "closed",
          'auto_message_managment': "Auto subscription Managment",
          'open_card_tile': "Open card service",
          'open_card_button': "For More Service>>",
        }, //德语
      };
}
