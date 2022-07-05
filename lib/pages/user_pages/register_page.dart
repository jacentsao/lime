import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lime/common/colors.dart';
import 'package:lime/widgets/app_text.dart';
import 'package:lime/widgets/app_text_field.dart';

/// 注册页
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: Text(
          '注册',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            alignment: Alignment.bottomCenter,
            image: AssetImage('assets/images/register_background.png'),
            fit: BoxFit.fitWidth,
            opacity: 0.2,
          ),
        ),
        child: Column(children: [
          SizedBox(height: 40.h),
          const AppTextField(prefixText: '用户名', hintText: '请输入用户名'),
          SizedBox(height: 20.h),
          const AppTextField(prefixText: '密码', hintText: '请输入密码'),
          SizedBox(height: 40.h),
          InkWell(
            onTap: () {
              print('object');
            },
            child: Container(
              width: 270.w,
              height: 40.h,
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [AppText('注册', color: Colors.white)],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
