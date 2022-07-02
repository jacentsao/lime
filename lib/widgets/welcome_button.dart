import 'package:flutter/material.dart';
import 'package:lime/common/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// 欢迎页按钮
class WelcomeButton extends StatelessWidget {
  final double? width;
  final double? height;
  final bool isResponsive;

  const WelcomeButton({
    super.key,
    required this.width,
    this.height = 60,
    this.isResponsive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          FaIcon(FontAwesomeIcons.chevronRight, color: Colors.white, size: 18),
        ],
      ),
    );
  }
}
