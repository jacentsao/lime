import 'package:flutter/widgets.dart';

/// 引导页
class WelcomeModel {
  IconData icon;
  String image;
  String title;
  String subTitle;
  String content;

  WelcomeModel({
    required this.icon,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.content,
  });
}
