import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MemberGridViewBody extends StatelessWidget {
  List images = [
    "assets/images/head/fabu.png",
    "assets/images/head/shoucang.png",
    "assets/images/head/huodong.png",
    "assets/images/head/fuli.png",
    "assets/images/head/zhuangban.png",
    "assets/images/head/kapai.png",
    "assets/images/head/chenghao.png",
    "assets/images/head/liulanjilu.png",
  ];

  List title = [
    'fabu'.tr,
    'guanzhu'.tr,
    'huodong'.tr,
    'fuli'.tr,
    'zhuangban'.tr,
    "kapai".tr,
    'chenghao'.tr,
    'jilu'.tr,
  ];
  List<Widget> viewchild = [];
  List<Widget> viewchild1 = [];
  List<Widget> viewchild2 = [];
  @override
  Widget build(BuildContext context) {
    _listview();
    _colum();
    // TODO: implement build
    return SliverGrid.count(
      mainAxisSpacing: 5.h,
      crossAxisSpacing: 8.r,
      crossAxisCount: 4,
      childAspectRatio: 1.2,
      children: viewchild,
    );
  }

  void _listview() {
    images.forEach((image) {
      viewchild1.add(Container(
          height: 80.h,
          width: 100.r,
          padding: EdgeInsets.all(8.r),
          child: Image(image: AssetImage(image))));
    });
    title.forEach(
      (til) {
        viewchild2.add(Text(til));
      },
    );
    // return Container();
  }

  List<Function()?> gridview_ontap = [
    () {
      print("我发布的");
    }, //
    () {
      print("我的关注");
    },
    () {
      print("活动中心");
    },
    () {
      print("阅读福利");
    },
    () {
      print("我的装扮");
    },
    () {
      print("我的卡牌");
    },
    () {
      print("称号");
    },
    () {
      print("浏览记录");
    },
  ];
  void _colum() {
    for (int j = 0; j < viewchild1.length; j++) {
      viewchild.add(
        InkWell(
          child: Column(
            children: [viewchild1[j], viewchild2[j]],
          ),
          onTap: gridview_ontap[j],
        ),
      );
    }
  }
}
