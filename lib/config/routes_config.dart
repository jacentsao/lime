import 'package:lime/config/route_names.dart';
import 'package:lime/pages/book.dart';
import 'package:lime/pages/chart.dart';
import 'package:lime/pages/dtail.dart';
import 'package:lime/pages/individual.dart';
import 'package:lime/pages/record.dart';
import 'package:lime/pages/register.dart';
import 'package:lime/pages/tabs.dart';
import 'package:lime/pages/welcome_page.dart';

// 底部标签页命名路由参数配置
final routes = {
  '/': () => Tabs(),
  // Tab buttom
  '/dtail': () => Dtail(),
  '/chart': () => Chart(),
  '/record': () => Record(),
  '/book': () => Book(),
  '/individual': () => Individual(),

  //
  '/register': () => Register(),
  
  welcomeRouteName: () => WelcomePage(),
};
