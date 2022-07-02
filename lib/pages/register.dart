import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lime/common/status_bar_color.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  /// App bar
  PreferredSizeWidget _appBarWidget() {
    return AppBar(
      elevation: 1,
      systemOverlayStyle: const StatusBarColor(),
      centerTitle: true,
      backgroundColor: const Color(0xfffafafa),
      titleTextStyle: TextStyle(
        color: const Color(0xff333333),
        fontSize: 24.sp,
      ),
      iconTheme: const IconThemeData(color: Color(0xff333333)),
      leading: const Icon(Icons.arrow_back_ios),
      title: const Text('注册'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      body: Container(child: Row(children: [
        Text('用户名'),
        Text('密码'),
      ]),)
    );
  }
}
