import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:up_work_ui/common/final_datas.dart';
import 'package:up_work_ui/models/User.dart';
import 'package:up_work_ui/views/user_register/e_mail_page.dart';
import 'package:up_work_ui/widgets/container_widget.dart';
import 'package:up_work_ui/widgets/text_widget.dart';

class NameSurname extends StatelessWidget {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _secondNameController = TextEditingController();
  User user;
  NameSurname({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(user.toString());

    Color themeColor = Theme.of(context).primaryColor;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: [FlatButton(onPressed: () {}, child: NormalText("Cancel"))],
        ),
        body: Container(
            color: themeColor,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Form(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderText(DefaultTexts.NameSurnameHeader),
                  BasicDataInput([
                    NormalText(DefaultTexts.FirstName),
                    NormalTextFormField(_firstNameController),
                  ]),
                  BasicDataInput([
                    NormalText(DefaultTexts.SecondName),
                    NormalTextFormField(_secondNameController)
                  ]),
                  RightBottomButton("Next", themeColor, () {
                    _nextEMailPage(context, _firstNameController.text,
                        _secondNameController.text);
                  }),
                ],
              )),
            )),
      ),
    );
  }

  _nextEMailPage(BuildContext context, String name, String surname) {
    if (name == "" || surname == "") {
      // return;
    }
    user.name = name;
    user.surname = surname;
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => EMailPage(user: user)));
  }
}

/*


 */
