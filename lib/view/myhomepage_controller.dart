import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_xiaoshuo_mirw/view/bookshelfview/bookshelfpage.dart';
import 'package:flutter_xiaoshuo_mirw/view/memberview/memberpage.dart';
import 'package:get/get.dart';
import 'siftbookview/siftbookpage.dart';

class MyHomePageContorller extends GetxController {
  GlobalKey<CurvedNavigationBarState> bottomNav = GlobalKey();
  var Countindex = 2.obs;
  List<Widget> PageList = [];
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    PageList
      ..add(BookShelfPage())
      ..add(SiftBookPage())
      ..add(MemberPage());
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    // print("一直的${Countindex}");
  }
}
