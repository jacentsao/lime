// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../auth/register/register_first_view.dart' as _i1;
import '../auth/register/register_second_view.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    RegisterFirstRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.RegisterFirstView());
    },
    RegisterSecondRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterSecondRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.RegisterSecondView(key: args.key, email: args.email));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(RegisterFirstRoute.name, path: '/'),
        _i3.RouteConfig(RegisterSecondRoute.name, path: '/register-second-view')
      ];
}

/// generated route for
/// [_i1.RegisterFirstView]
class RegisterFirstRoute extends _i3.PageRouteInfo<void> {
  const RegisterFirstRoute() : super(RegisterFirstRoute.name, path: '/');

  static const String name = 'RegisterFirstRoute';
}

/// generated route for
/// [_i2.RegisterSecondView]
class RegisterSecondRoute extends _i3.PageRouteInfo<RegisterSecondRouteArgs> {
  RegisterSecondRoute({_i4.Key? key, required String email})
      : super(RegisterSecondRoute.name,
            path: '/register-second-view',
            args: RegisterSecondRouteArgs(key: key, email: email));

  static const String name = 'RegisterSecondRoute';
}

class RegisterSecondRouteArgs {
  const RegisterSecondRouteArgs({this.key, required this.email});

  final _i4.Key? key;

  final String email;

  @override
  String toString() {
    return 'RegisterSecondRouteArgs{key: $key, email: $email}';
  }
}
