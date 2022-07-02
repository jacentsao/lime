import 'package:flutter/material.dart';
import 'package:lime/config/route_names.dart';
import 'package:lime/route/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  // flutter 屏幕适配方案
  await ScreenUtil.ensureScreenSize();
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 初始化路由名称
      initialRoute: welcomeRouteName,
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primaryColor: Colors.greenAccent,
      //   highlightColor: Color.fromRGBO(0, 0, 0, 0),
      //   splashColor: Color.fromRGBO(0, 0, 0, 0),
      // ),
    );
  }
}
