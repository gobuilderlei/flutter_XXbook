import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MemberHeaderView extends StatelessWidget {
  // Key key;
  var contains_height, postion_height;
  var headimgpath, username = "";
  var ismen, isnetwork = false;
  var userlevel, uservip, usermoney, userjifen = 0;

  MemberHeaderView({
    // required this.key,
    required this.contains_height, //
    required this.headimgpath,
    required this.ismen,
    required this.isnetwork,
    required this.username,
    required this.userlevel,
    required this.uservip,
    required this.usermoney,
    required this.userjifen,
    required this.postion_height,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(left: 15.r, right: 15.r),
      child: Container(
        // padding: EdgeInsets.only(left: 5.r, right: 5.r),
        // colo,
        // key: key,
        width: 720.r,
        height: contains_height,
        child: Stack(
          children: [
            // Container(
            //   // height: 156.h,
            // child:
            Column(
              children: [
                _Headimgwidget(), //画头部widget中的头像部分
                _Headtick_money(), //画头部widget票数以及账户点数 充值按钮
              ],
            ),
            // ),
            Positioned(child: _headnewad(), bottom: -20.h)
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(width: 0.2, color: Colors.black12),
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
      ),
    );
  }

//画头部widget中的头像部分
//开始
  Widget _Headimgwidget() {
    return Padding(
        padding: EdgeInsets.fromLTRB(10.r, 10.h, 5.r, 8.h),
        child: Row(children: [
          Container(
            padding: EdgeInsets.all(3.r),
            height: 80.r,
            width: 80.r,
            decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Colors.black12),
                image: DecorationImage(
                  image: _headImage(headimgpath),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(150.0)),
          ), //人员头像
          Padding(
              padding: EdgeInsets.only(
                left: 10.r,
                right: 10.r,
              ),
              child: _tileInfo(username, userlevel, uservip))
        ]));
  }

  ImageProvider<Object> _headImage(String path) {
    if (isnetwork == false) {
      if (ismen == true) {
        return AssetImage("assets/images/head/men.png");
      } else {
        return AssetImage("assets/images/head/women.png");
      }
    } else {
      return NetworkImage(path);
    }
    // return AssetImage("assets/images/head/men.png");
  }

  Widget _tileInfo(String name, userlevel, uservip) {
    return Column(
      children: [
        Text(
          username,
          style: TextStyle(
              fontSize: 35.sp,
              overflow: TextOverflow.clip,
              fontWeight: FontWeight.bold),
        ),
        Padding(
            padding: EdgeInsets.only(top: 5.r),
            child: Row(
              children: [
                Container(
                  //划人物等级
                  padding: EdgeInsets.only(left: 5.r, right: 5.r),
                  height: 30.r,
                  width: 50.r,
                  child: Text(
                    "Lv.${userlevel}",
                    style: TextStyle(color: Colors.white, fontSize: 20.sp),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 80, 75, 73),
                      borderRadius: BorderRadius.circular(5.0)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.r),
                  child: Container(
                    //画会员等级
                    padding: EdgeInsets.only(left: 5.r, right: 5.r),
                    height: 30.r,
                    width: 145.r,
                    child: Row(
                      children: [
                        Icon(
                          Icons.abc,
                          size: 20.r,
                          color: Colors.yellowAccent,
                        ),
                        Padding(padding: EdgeInsets.only(left: 5.r)),
                        Text(
                          "Lv.${uservip}",
                          style:
                              TextStyle(color: Colors.white, fontSize: 20.sp),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 80, 75, 73),
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                )
              ],
            ))
      ],
    );
  }
//结束

  Widget _Headtick_money() {
    return Container(
        height: 65.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                padding: EdgeInsets.only(left: 10.r),
                width: 400.r,
                child: Row(
                  children: [
                    _tickMoneytitle("1", "推荐票"),
                    _tickMoneytitle("0", "月票"),
                    _tickMoneytitle(usermoney, "我的账户"),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                )),
            TextButton(
                // clipBehavior: Clip.hardEdge,
                onPressed: () {
                  print("点击了充值按钮");
                },
                child: Text(
                  "充值",
                  style: TextStyle(
                      color: Colors.white,
                      // fontWeight: FontWeight.bold,
                      fontSize: 35.sp),
                ),
                style: ButtonStyle(backgroundColor:
                    MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.hovered)) {
                    return Colors.red;
                  }
                  return Colors.redAccent;
                })))
          ],
        ));
  }

  Widget _tickMoneytitle(var count, String name) {
    return Column(
      children: [
        Text(
          "$count",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 35.sp),
        ), //数量
        Text(
          name,
          style: TextStyle(
              color: Colors.black45,
              // fontWeight: FontWeight.bold,
              fontSize: 25.sp),
        ), //zifus
      ],
    );
  }

//
  Widget _headnewad() {
    print("这次打印头部红色框的大小$postion_height");
    return Container(
      height: this.postion_height,
      width: 720.r,
      child: Column(children: [
        _adTtile(), //广告头部
        _adbody()
      ]),
      decoration: BoxDecoration(
          border: Border.all(width: 0.2, color: Colors.black12),
          color: Color.fromARGB(255, 243, 92, 81),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
    );
  }

  Widget _adTtile() {
    return Container(
        padding: EdgeInsets.fromLTRB(20.r, 10.h, 20.r, 10.h),
        height: 70.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: 215.r,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.chair_outlined,
                        color: Color.fromRGBO(238, 203, 121, 0.87),
                      ),
                      // Padding(
                      //     padding: EdgeInsets.only(left: 10.r),
                      // child:
                      Text("open_card_tile".tr,
                          style: TextStyle(
                              color: Color.fromARGB(241, 245, 223, 58),
                              fontSize: 30.sp))
                      // )
                    ])),
            InkWell(
              child: Text(
                'open_card_button'.tr,
                style: TextStyle(
                    color: Color.fromRGBO(238, 203, 121, 0.87),
                    fontSize: 30.sp),
              ),
              onTap: () {
                print("点击了开通服务0");
              },
            ),
          ],
        ));
  }

  Widget _adbody() {
    return Container(
        height: 200.h,
        child: Column(
          children: [
            Text("SSSSSSSS"),
            Text("SSSSSSSS"),
            Text("SSSSSSSS"),
            Text("SSSSSSSS"),
          ],
        ));
  }
  //头部信息结束
}

//按钮颜色控制类
@immutable
class _TextButtonDefaultOverlay extends MaterialStateProperty<Color?> {
  _TextButtonDefaultOverlay(this.primary);

  final Color primary;

  @override
  Color? resolve(Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered))
      return primary.withOpacity(0.04);
    if (states.contains(MaterialState.focused) ||
        states.contains(MaterialState.pressed))
      return primary.withOpacity(0.12);
    return null;
  }

  @override
  String toString() {
    return '{hovered: ${primary.withOpacity(0.04)}, focused,pressed: ${primary.withOpacity(0.12)}, otherwise: null}';
  }
}
