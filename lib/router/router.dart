import 'package:auto_route/annotations.dart';
import 'package:lime/auth/register/register_first_view.dart';
import 'package:lime/auth/register/register_second_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page|View,Route',
  routes: <AutoRoute>[
    AutoRoute(page: RegisterFirstView, initial: true),
    AutoRoute(page: RegisterSecondView),
  ],
)
class $AppRouter {}
