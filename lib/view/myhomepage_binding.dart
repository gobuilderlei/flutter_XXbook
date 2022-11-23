import 'package:flutter_xiaoshuo_mirw/view/myhomepage_controller.dart';
import 'package:get/get.dart';

class MyHomePageBinds extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => MyHomePageContorller());
  }
}
