import 'package:flutter/material.dart';
import 'package:up_work_ui/common/final_datas.dart';
import 'package:up_work_ui/models/User.dart';
import 'package:up_work_ui/views/user_register/create_password.dart';
import 'package:up_work_ui/widgets/container_widget.dart';
import 'package:up_work_ui/widgets/text_widget.dart';

class EMailPage extends StatelessWidget {
  User user;
  EMailPage({Key key, @required this.user}) : super(key: key);
  TextEditingController _eMailController = TextEditingController();

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
                  HeaderText(DefaultTexts.EMailHeader),
                  BasicDataInput([
                    NormalText(DefaultTexts.EMail),
                    NormalTextFormField(_eMailController),
                  ]),
                  RightBottomButton("Next", themeColor, () {_nextPasswordPage(context,_eMailController.text);}),
                ],
              )),
            )),
      ),
    );
  }

  _nextPasswordPage(BuildContext context,String eMail){
    if(eMail != ""){
//    return ;
    }
    user.email=eMail;
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => CreatePassword(user: user)));
  }
}
