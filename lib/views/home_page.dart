import 'package:flutter/material.dart';
import 'package:up_work_ui/common/final_datas.dart';
import 'package:up_work_ui/models/User.dart';
import 'package:up_work_ui/views/password_forgot/password_forgot.dart';
import 'package:up_work_ui/views/user_register/name_surname.dart';
import 'package:up_work_ui/widgets/button_widget.dart';

import 'login/login.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(HomeDefaultText.Welcome),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MenuButton(context,  LoginPage(), HomeDefaultText.LoginPage ),
            MenuButton(context,  NameSurname(user: new User()), HomeDefaultText.UserRegister ),
            MenuButton(context, PasswordForgot(), HomeDefaultText.PasswordForgot),
          ],
        ),
      ),
    ));
  }
}
