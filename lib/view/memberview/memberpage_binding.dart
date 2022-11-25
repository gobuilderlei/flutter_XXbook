import 'package:flutter_xiaoshuo_mirw/view/memberview/memberpage_controller.dart';
import 'package:get/get.dart';

class MemberPageBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    //get.lay
    Get.lazyPut(() => MemberPageController());
  }
}
