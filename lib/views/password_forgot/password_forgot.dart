import 'package:flutter/material.dart';
import 'package:up_work_ui/common/final_datas.dart';
import 'package:up_work_ui/widgets/button_widget.dart';
import 'package:up_work_ui/widgets/container_widget.dart';
import 'package:up_work_ui/widgets/text_widget.dart';

class PasswordForgot extends StatelessWidget {
  TextEditingController _emailController = new TextEditingController();
    final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
Color themeColor = Theme.of(context).primaryColor;
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          elevation: 0,
          actions: [CancelButton(context)],
        ),
        body: Container(
            color: themeColor,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Form(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderText(DefaultTexts.PasswordForgotHeader),
                  SlimText(DefaultTexts.PasswordForgotContent),
                  BasicDataInput([
                    NormalText(DefaultTexts.EMail),
                    NormalTextFormField(_emailController),
                  ]),
                  RightBottomButton("Reset", themeColor, () {
                    _checkEmail(_emailController.text,themeColor);
                  }),
                ],
              )),
            )),
      ),
    );
  }

  _checkEmail(String email,Color themeColor){
    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
    if(!emailValid){
            _scaffoldKey.currentState
          .showSnackBar(SnackBar(content:ErrorRichText(DefaultTexts.EMailError,headerColor: themeColor),backgroundColor: Colors.white,));
    }
    else {
      _scaffoldKey.currentState
          .showSnackBar(SnackBar(content:Text(DefaultTexts.EMailSuccess,style: TextStyle(color:Colors.black),),backgroundColor: Colors.white,));
    }
  }
}