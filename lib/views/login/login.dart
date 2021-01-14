import 'package:flutter/material.dart';
import 'package:up_work_ui/common/final_datas.dart';
import 'package:up_work_ui/widgets/button_widget.dart';
import 'package:up_work_ui/widgets/container_widget.dart';
import 'package:up_work_ui/widgets/text_widget.dart';

class LoginPage extends StatelessWidget {
    TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
Color themeColor = Theme.of(context).primaryColor;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: [CancelButton(context)],
        ),
        body: Container(
            color: themeColor,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Form(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderText(DefaultTexts.LoginHeader),
                  BasicDataInput([
                    NormalText(DefaultTexts.EMail),
                    NormalTextFormField(_emailController),
                  ]),
                  BasicDataInput([
                    NormalText(DefaultTexts.CreatePassword),
                    NormalTextFormField(_passwordController),
                  ]),
                  RightSideWidget(
                    FlatButton(
                      onPressed: (){
                        print(DefaultTexts.LoginForgotPassword);
                      },
                      child: SlimText(
                        DefaultTexts.LoginForgotPassword,
                    )
                  ),),
                  RightBottomButton("Ok", themeColor, () {}),
                ],
              )),
            )),
      ),
    );
  }
}