import 'package:flutter/material.dart';
import 'package:up_work_ui/common/final_datas.dart';
import 'package:up_work_ui/models/User.dart';
import 'package:up_work_ui/widgets/button_widget.dart';
import 'package:up_work_ui/widgets/container_widget.dart';
import 'package:up_work_ui/widgets/text_widget.dart';

class ProfilePhoto extends StatelessWidget {
  User user;
  ProfilePhoto({Key key, @required this.user}) : super(key: key);
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
                  BasicDataInput([
                    HeaderText(DefaultTexts.ProfilePhotoHeader),
                    Container(
                        padding: EdgeInsets.only(top: 10),
                        child: SlimText(DefaultTexts.ProfilePhotoContent)),
                  ]),
                  Center(
                    child: Container(
                      child: IconButton(
                        padding: EdgeInsets.all(80),
                        icon: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                        iconSize: 100,
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 3.0)),
                    ),
                  ),
                  RightBottomButton("Finish", themeColor, () {
                    print(user.toString());
                  }),
                ],
              )),
            )),
      ),
    );
  }
}
