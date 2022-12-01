import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MemberPageController extends GetxController {
  GlobalKey<ScaffoldState> globalKey = GlobalKey();
  RxBool isopend = true.obs; //是否开启
  RxBool isdayornight = true.obs; //是否是白天
  RxString def_men_headimgpath = 'assets/images/head/men.png'.obs; //男士默认头像地址
  RxString def_women_headimgpath =
      'assets/images/head/women.png'.obs; //女士默认头像地址
  RxBool ismen = false.obs; //是否男女
  RxBool networkok = false.obs; //是否联网
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
