# flutter_xiaoshuo_mirw

flutter 小说项目.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

###### flutter 抽屉代码代码打开方式,处理全局以及局部打开方式
1.使用Scaffold.of(context).openEndDrawer();我只知道在同一级里面打开。这里不多讲
[Scaffold.of(context).openDrawer();]
2.使用全局GlobalKey 打开抽屉（无论抽屉放在哪里都可以打开抽屉）
[final GlobalKey<ScaffoldState> globalkey = GlobalKey();]
[key: globalkey,]
[endDrawer: customEndDrawer(),]
[globalkey.currentState!.openEndDrawer();]
作者：骑着雅迪小毛驴上班的老瞿
链接：https://www.jianshu.com/p/da0837998a65
来源：简书