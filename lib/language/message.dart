import 'package:get/get.dart';

class Messages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'zh_Hans_CN': {
          'title1': "Flutter 测试界面",
        }, //中文
        'zh_CN': {
          'title1': "Flutter 测试界面",
        }, //中文2号
        'en_US': {'title1': "Flutter Demo Home Page"}, //英文
        'de_DE': {'title1': "Flutter demo homPaOne"}, //德语
      };
}
