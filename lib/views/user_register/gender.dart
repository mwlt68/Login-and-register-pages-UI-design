import 'package:flutter/material.dart';
import 'package:up_work_ui/common/final_datas.dart';
import 'package:up_work_ui/models/User.dart';
import 'package:up_work_ui/views/user_register/profile_photo.dart';
import 'package:up_work_ui/widgets/button_widget.dart';
import 'package:up_work_ui/widgets/container_widget.dart';
import 'package:up_work_ui/widgets/text_widget.dart';

class GenderPage extends StatelessWidget {
  User user;
  GenderPage({Key key, @required this.user}) : super(key: key);
  TextEditingController _genderController = TextEditingController();
  TextEditingController _targetGenderController = TextEditingController();
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
                  HeaderText(DefaultTexts.GenderHeader1),
                  BasicDataInput([
                    NormalText(DefaultTexts.Gender),
                    NormalTextFormField(_genderController),
                  ]),
                                    HeaderText(DefaultTexts.GEnderHeader2),
                  BasicDataInput([
                    NormalText(DefaultTexts.Gender),
                    NormalTextFormField(_targetGenderController),
                  ]),
                  RightBottomButton("Next", themeColor, () {_nextProfilePhotoPage(context,_genderController.text,_targetGenderController.text);}),
                ],
              )),
            )),
      ),
    );
  }
  _nextProfilePhotoPage(BuildContext context,String gender,String targetGender){
  if(gender == ""  || targetGender == ""){

  }
  user.gender=gender;
  user.targetGender=targetGender;
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => ProfilePhoto(user:user)));
}
}
