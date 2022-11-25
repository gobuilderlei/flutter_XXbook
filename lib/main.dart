import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_xiaoshuo_mirw/view/myhomepage_binding.dart';
import 'package:get/get.dart';

import 'language/message.dart';
import 'view/myhomepage.dart';

//隔壁老王
//边角小说
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var local = Get.deviceLocale;
    if (local.toString().startsWith('zh')) {
      Get.updateLocale(Locale('zh', 'CN'));
    } else {
      Get.updateLocale(Locale('en', 'US'));
    }
    // print("地址的信息为" + local.toString());
    // const String title1 = '';
    // title1 = 'title'.tr!;
    return ScreenUtilInit(
      designSize: const Size(750, 1334),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          translations: Messages(),
          locale: Locale('zh', 'CN'),
          fallbackLocale: Locale('en', 'US'),
          // title: 'flutter demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          getPages: [
            GetPage(
                name: '/', page: () => MyHomePage(), binding: MyHomePageBinds())
          ],
          //  home: MyHomePage(),//使用路由的情况就不需要通过home来跳转了.
        );
      },
    );
  }
}
