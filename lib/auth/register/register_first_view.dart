import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:lime/router/router.gr.dart';

class RegisterFirstView extends StatelessWidget {
  const RegisterFirstView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RegisterFirstViewBuilder(context: context).build();
  }
}

class RegisterFirstViewBuilder {
  final BuildContext context;

  RegisterFirstViewBuilder({required this.context});

  Future<bool> sendCode() async {
    return 1 == 1 ? true : false;
  }

  Widget build() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('快速注册'),
      ),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            _firstForm(),
          ],
        ),
      ),
    );
  }

  Widget _firstForm() {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _phoneOrEmailField(),
            _signUpButton(),
          ],
        ),
      ),
    );
  }

  Widget _phoneOrEmailField() {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.person),
        hintText: '手机号/邮箱',
      ),
      onChanged: (value) {},
    );
  }

  Widget _signUpButton() {
    return ElevatedButton(
      child: const Text('下一步'),
      onPressed: () async {

        var result = await sendCode();

        if (result) {
          context.router.push(RegisterSecondRoute(email: '124'));
        } else {
          // 请求失败
        }
      },
    );
  }
}
