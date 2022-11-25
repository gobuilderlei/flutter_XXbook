import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xiaoshuo_mirw/view/memberview/memberpage_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              color: Colors.white,
              child: CustomScrollView(
                slivers: [
                  _builderAppbar(),
                ],
              )
              // ),
              ),
      // drawer: _drawer(),
      endDrawer: _drawer(),
    );
  }

  Widget _builderAppbar() {
    return SliverAppBar(
      elevation: 2.0,
      leading: InkWell(
        child: Icon(
          Icons.abc,
          color: Colors.black26,
        ),
        onTap: () {
          print("按了这个按钮");
          controller.globalKey.currentState!.openEndDrawer();
        },
      ),
      backgroundColor: Colors.white,
      actions: [
        Icon(
          Icons.settings,
          color: Colors.black,
        ),
        Icon(
          Icons.music_note,
          color: Colors.pink,
        )
      ],
    );
  }

  Widget _drawer() {
    print("本组件被执行了");
    return Drawer(
      child: Container(
        color: Colors.black,
        child: Text("抽屉啊"),
      ),
      width: 300.r,
    );
  }
}
