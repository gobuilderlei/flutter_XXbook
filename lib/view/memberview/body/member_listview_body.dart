import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// MemberListViewBody
/// auth com.lei
/// 本类负责生成一个 Row 中含 image(icon),title以及 后缀 > 的事件
/// 主要应用在个人中心底部的 list中.
class MemberListViewBody extends StatelessWidget {
  Function()? ontap1;
  String image;
  var namepa; //名称

  MemberListViewBody({
    required this.ontap1,
    required this.image,
    required this.namepa,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
        onTap: ontap1,
        child: Container(
          padding: EdgeInsets.fromLTRB(20.r, 8.r, 20.r, 8.r),
          width: 720.r,
          height: 60.h,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: 450.r,
                  child: Row(
                    children: [
                      Container(
                        width: 35.r,
                        height: 35.r,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(this.image), fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 20.r),
                          child: Text(this.namepa))
                    ],
                  )),
              Text(">")
            ],
          ),
        ));
  }
}
