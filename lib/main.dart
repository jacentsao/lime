import 'package:flutter/material.dart';
import 'package:lime/config/route_names.dart';
import 'package:lime/route/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// 启动入口
void main() async {
  // flutter 屏幕适配方案
  await ScreenUtil.ensureScreenSize();

  // 首次启动加载引导页
  final prefs = await SharedPreferences.getInstance();
  final int? initScreen = prefs.getInt('initScreen');
  await prefs.setInt('initScreen', 1);

  runApp(Main(initScreen));
}

class Main extends StatelessWidget {
  final int? initScreen;

  const Main(this.initScreen, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 初始化路由名称
      initialRoute: initScreen == 0 || initScreen == null
          ? welcomeRouteName
          : homeRouteName,
      // 路由列表
      onGenerateRoute: onGenerateRoute,
      // 关闭 debug banner
      debugShowCheckedModeBanner: false,
    );
  }
}
