import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_xiaoshuo_mirw/view/memberview/memberpage_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/rendering.dart';

import 'body/member_gridview_body.dart';
import 'head/member_head.dart';

//这里有一个知识点
//SliverConstraints constraints 获取到动态的相关数值
//具体查阅 https://book.flutterchina.club/chapter6/sliver.html#_6-11-1-sliver-%E5%B8%83%E5%B1%80%E5%8D%8F%E8%AE%AE

class MemberPage extends StatelessWidget {
  MemberPageController controller = Get.put(MemberPageController());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: controller.globalKey,
      body:
          // SafeArea(
          //   child:
          Container(
              color: Color.fromARGB(31, 187, 185, 185),
              child: CustomScrollView(
                physics: // ScrollPhysics(
                    const BouncingScrollPhysics(
                        //BouncingScrollPhysics or ClampingScrollPhysics
                        // parent: AlwaysScrollableScrollPhysics()
                        ),
                slivers: [
                  _builderAppbar(), //画头部
                  // _builderBodytop(), //画身体
                  SliverLayoutBuilder(
                    builder: _buildSliver,
                  ),
                  // _buildSliverList(),
                  MemberGridViewBody(),
                ],
              )
              // ),
              ),
      // drawer: _drawer(),
      endDrawer: _drawer(),
    );
  }

  final List<Color> data = [
    Colors.orange[50]!,
    Colors.orange[100]!,
    Colors.orange[200]!,
    Colors.orange[300]!,
    Colors.orange[400]!,
    Colors.orange[500]!,
    Colors.orange[600]!,
    Colors.orange[700]!,
    Colors.orange[800]!,
    Colors.orange[900]!,
    Colors.orange[50]!,
    Colors.orange[100]!,
    Colors.orange[200]!,
    Colors.orange[300]!,
    Colors.orange[400]!,
    Colors.orange[500]!,
    Colors.orange[600]!,
    Colors.orange[700]!,
    Colors.orange[800]!,
    Colors.orange[900]!,
  ];
  List<Widget> _buildActions() => <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.star_border,
            color: Colors.white,
          ),
        )
      ];

  String colorString(Color color) =>
      "#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}";

  Widget _buildSliverList() => SliverFixedExtentList(
        itemExtent: 50,
        delegate: SliverChildBuilderDelegate(
            (_, int index) => Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 60,
                  color: data[index],
                  child: Text(
                    colorString(data[index]),
                    style: const TextStyle(color: Colors.white, shadows: [
                      Shadow(
                          color: Colors.black,
                          offset: Offset(.5, .5),
                          blurRadius: 2)
                    ]),
                  ),
                ),
            childCount: data.length),
      );

  Widget _buildSliver(BuildContext context, SliverConstraints constraints) {
    var xxx = false;
    print("打印他的数值:${700.h - constraints.remainingCacheExtent / 3}");
    // WidgetsBinding.instance.addPostFrameCallback( controller.headoffset.currentContext.findRenderObject() );
    return SliverToBoxAdapter(
        child: MemberHeaderView(
      // key: controller.headoffset,//本key 是用来获取坐标的.这里可以使用 Listener 来获取相关
      //wiget的数据 ,具体可查看 https://zhuanlan.zhihu.com/p/85549830
      contains_height: 700.h - (constraints.remainingCacheExtent / 3.3) <= 300.h
          ? 300.h
          : 700.h - (constraints.remainingCacheExtent / 3.3),
      headimgpath: "assets/images/head/men.png",
      ismen: true,
      isnetwork: false,
      username: "书友XXX2201",
      userlevel: "5",
      uservip: "普通会员",
      usermoney: "185",
      userjifen: 15,
      postion_height: 600.h - (constraints.remainingCacheExtent / 3) <= 150.h
          ? 150.h
          : 600.h - (constraints.remainingCacheExtent / 3),
    ));
  }

  ImageProvider<Object> _headImage() {
    if (controller.ismen == false) {
      if (controller.ismen == true) {
        return AssetImage("assets/images/head/men.png");
      } else {
        return AssetImage("assets/images/head/women.png");
      }
    } else {
      return NetworkImage("");
    }
    // return AssetImage("assets/images/head/men.png");
  }

  Widget _builderAppbar() {
    return SliverAppBar(
      elevation: 2.0,
      backgroundColor: Color.fromARGB(31, 187, 185, 185),
      leading: InkWell(
        child: const Icon(
          Icons.compare_arrows_sharp,
          color: Colors.black26,
        ),
        onTap: () {
          print("按了这个按钮");
          controller.globalKey.currentState!.openEndDrawer();
        },
      ),
      actions: [
        Padding(
            padding: EdgeInsets.only(top: 25.h, bottom: 25.h),
            child: Container(
                width: 160.r,
                height: 30.h,
                padding: EdgeInsets.only(left: 15.r, right: 15.r),
                child: Obx(() {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      controller.isdayornight.value
                          ? Icon(
                              Icons.sunny,
                              color: Colors.yellowAccent,
                            )
                          : Icon(
                              Icons.nightlight,
                              color: Colors.black,
                            ),
                      controller.isdayornight.value
                          ? Text(
                              "day_themes".tr,
                            )
                          : Text(
                              "night_themes".tr,
                            )
                    ],
                  );
                }),
                decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: Colors.white),
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))))),
        Padding(
            padding: EdgeInsets.only(left: 20.r, right: 20.r),
            child: Icon(
              Icons.email,
              color: Colors.black,
            ))
      ],
    );
  }

  Widget _drawer() {
    // print("本组件被执行了");
    return Drawer(
      width: 700.r,
      child: Container(
          // width: 750.r,
          color: Colors.black12,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                elevation: 2.0,
                title: Text(
                  "member_setting".tr,
                  style: TextStyle(color: Colors.black, fontSize: 35.sp),
                ),
                backgroundColor: Colors.white,
              ),
              SliverFillRemaining(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0.r, 0, 10.r, 0),
                      height: 50.h,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.r),
                              child: Text("push_message".tr,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 30.sp)),
                            ),
                            InkWell(
                              child: Obx(
                                () {
                                  return controller.isopend.value
                                      ? Text("isopend".tr + " >", //已开启
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 30.sp))
                                      : Text("isclosed".tr + " >", //已关闭
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 30.sp));
                                },
                              ),
                              onTap: () {
                                print("点击了开关按钮");
                                if (controller.isopend.value == true) {
                                  controller.isopend.value = false;
                                } else {
                                  controller.isopend.value = true;
                                }

                                // controller.globalKey.currentState!
                                //     .openEndDrawer();
                              },
                            ),
                          ]),
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.white),
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(5.0))),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 8.h, 0, 0),
                      child: Container(
                        // padding: EdgeInsets.fromLTRB(0.r, 0.h, 0.r, 10.h),
                        // color: Colors.white,
                        height: 80.h,
                        child: Padding(
                            padding: EdgeInsets.only(left: 8.r),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("auto_message_managment".tr,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30.sp)),
                                  InkWell(
                                    child: Text(">",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 30.sp)),
                                    onTap: () {
                                      print("点击了自动订阅按钮");
                                      // controller.globalKey.currentState!
                                      //     .openEndDrawer();
                                    },
                                  ),
                                ])),
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5, color: Colors.white),
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }

  Widget _builderBodytop() {
    // return SliverFillViewport(delegate: delegate);
    return SliverFillRemaining(
      child: Text("SSSS"),
      /**Container(
      height: 500.h,
      width: 750.r,
      padding: EdgeInsets.only(left: 25.r, right: 25.r),
      child: Text("sssss"),
      decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Colors.white),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5.0), topRight: Radius.circular(5.0))),
    ) */
    );
  }
}
