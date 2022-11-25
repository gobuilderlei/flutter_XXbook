import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'myhomepage_controller.dart';

class MyHomePage extends GetView<MyHomePageContorller> {
  MyHomePageContorller _contorller = Get.put(MyHomePageContorller());
  @override
  Widget build(Object context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _contorller.bottomNav,
        index: controller.Countindex.value,
        items: [
          Icon(Icons.add, size: 25.sp),
          Icon(Icons.list, size: 25.sp),
          Icon(Icons.compare_arrows, size: 25.sp),
        ],
        onTap: ((value) {
          controller.Countindex.value = value;
          print("controller.Countindex:::${_contorller.Countindex}");
        }),
      ),
      body: Center(child: Obx(() {
        print("Pagelist中index的数值为:${controller.Countindex.value}");
        return controller.PageList[controller.Countindex.value];
      })),
    );
  }
}
