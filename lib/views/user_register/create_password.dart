import 'package:flutter/material.dart';
import 'package:up_work_ui/common/final_datas.dart';
import 'package:up_work_ui/models/User.dart';
import 'package:up_work_ui/views/user_register/birthday.dart';
import 'package:up_work_ui/widgets/button_widget.dart';
import 'package:up_work_ui/widgets/container_widget.dart';
import 'package:up_work_ui/widgets/text_widget.dart';

class CreatePassword extends StatefulWidget {
  User user;
  CreatePassword({Key key, @required this.user}) : super(key: key);
  @override
  _CreatePasswordState createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _hidePassword = true;
  String _tempPassword = "";
  @override
  Widget build(BuildContext context) {
    TextEditingController _passwordController = TextEditingController();
    Color themeColor = Theme.of(context).primaryColor;
    _passwordController.text = _tempPassword;
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
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeaderText(DefaultTexts.CreatePasswordHeader),
                      BasicDataInput([
                        Row(
                          children: [
                            Expanded(
                                child: NormalText(
                                    DefaultTexts.CreatePassword)),
                            FlatButton(
                                onPressed: () {
                                  setState(() {
                                    _tempPassword = _passwordController.text;
                                    _hidePassword = !_hidePassword;
                                  });
                                },
                                child: _hidePassword
                                    ? NormalText(DefaultTexts.PasswordShow)
                                    : NormalText(DefaultTexts.PasswordHide))
                          ],
                        ),
                        NormalTextFormField(
                          _passwordController,
                          obscureText: _hidePassword,
                        ),
                      ]),
                      RightBottomButton("Next", themeColor, () {
                        _nextBirtdayPage(_passwordController.text,themeColor);
                      }),

                    ],
                  )),
            )),
      ),
    );
  }

  void _nextBirtdayPage(String password,Color themeColor) {
    var checkPassword = _passwordValidator(password);
    if (checkPassword != null) {
      _scaffoldKey.currentState
          .showSnackBar(SnackBar(content:ErrorRichText(checkPassword,headerColor: themeColor),backgroundColor: Colors.white,));
    } else {
      widget.user.password = password;
          Navigator.push(context,
        MaterialPageRoute(builder: (context) => BirthdayPage(user: widget.user)));
    }
  }

  String _passwordValidator(String value) {
    if (value == null || value.length < 8) {
      return DefaultErrorTexts.PasswordLeastError;
    }
    return null;
  }
}
