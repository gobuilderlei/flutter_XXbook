import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MemberHeaderView extends StatelessWidget {
  var contains_height = 200.h;
  var headimgpath, username = "";
  var ismen, isnetwork = false;
  var userlevel, uservip, usermoney, userjifen = 0;

  MemberHeaderView(
      {required this.contains_height, //
      required this.headimgpath,
      required this.ismen,
      required this.isnetwork,
      required this.username,
      required this.userlevel,
      required this.uservip,
      required this.usermoney,
      required this.userjifen});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        padding: EdgeInsets.fromLTRB(15.r, 0, 15.r, 0),
        width: 720.r,
        height: contains_height,
        child: Stack(
          children: [
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.r, 8.h, 10.r, 8.h),
                    child: Row(
                      children: [
                        Container(
                          height: 60.r,
                          width: 60.r,
                          child: Image(
                            image: _headImage(headimgpath),
                            fit: BoxFit.fill,
                          ),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.2, color: Colors.black12),
                              borderRadius: BorderRadius.circular(20.0)),
                        ), //人员头像
                        Padding(
                            padding: EdgeInsets.only(
                              left: 10.r,
                              right: 10.r,
                            ),
                            child: _tileInfo(username, userlevel, uservip))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
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
                  height: 30.r,
                  width: 30.r,
                  child: Text(
                    "Lv.${uservip}",
                    style: TextStyle(color: Colors.white, fontSize: 20.sp),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 80, 75, 73),
                      borderRadius: BorderRadius.circular(5.0)),
                ),
                Container(
                  //画会员等级
                  height: 30.r,
                  width: 200.r,
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
                        style: TextStyle(color: Colors.white, fontSize: 20.sp),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 80, 75, 73),
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ],
            ))
      ],
    );
  }
}
