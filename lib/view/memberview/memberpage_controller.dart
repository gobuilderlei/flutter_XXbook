import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MemberPageController extends GetxController {
  GlobalKey<ScaffoldState> globalKey = GlobalKey();
  // GlobalKey headoffset = GlobalKey(); //获取顶部位置坐标位置
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
    // WidgetsBinding.instance.addPostFrameCallback(_getRenderBox);
    super.onInit();
  }

  // _getRenderBox(_) {
  //   //获取`RenderBox`对象
  //   RenderBox renderBox = headoffset.currentContext.findRenderObject();
  // }
}
