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

  RxList listbuton = [
    {
      "tubiao": "assets/images/head/women.png",
      "title": "点娘奇妙世界",
      "ontap": () {
        print("点了奇妙世界");
      },
    },
    {
      "tubiao": "assets/images/head/men.png",
      "title": "福利中心",
      "ontap": () {
        print("点了福利中心");
      },
    },
    {
      "tubiao": "assets/images/head/women.png",
      "title": "我的收益",
      "ontap": () {
        print("点了奇妙世界");
      },
    },
    {
      "tubiao": "assets/images/head/men.png",
      "title": "我的收藏",
      "ontap": () {
        print("点了我的收藏");
      },
    },
    {
      "tubiao": "assets/images/head/women.png",
      "title": "我的奖品",
      "ontap": () {
        print("点了我的奖品");
      },
    },
    {
      "tubiao": "assets/images/head/men.png",
      "title": "成为作家",
      "ontap": () {
        print("点了成为作家");
      },
    },
    {
      "tubiao": "assets/images/head/women.png",
      "title": "领币",
      "ontap": () {
        print("点了领币");
      },
    },
    {
      "tubiao": "assets/images/head/men.png",
      "title": "达人中心",
      "ontap": () {
        print("点了达人中心");
      },
    },
    {
      "tubiao": "assets/images/head/women.png",
      "title": "帮助与客服",
      "ontap": () {
        print("点了帮助与客服");
      },
    },
    {
      "tubiao": "assets/images/head/men.png",
      "title": "积分商城",
      "ontap": () {
        print("点了积分商城");
      },
    },
  ].obs;
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
