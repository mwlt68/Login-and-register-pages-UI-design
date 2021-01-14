import 'package:flutter/material.dart';
import 'package:up_work_ui/common/static_fuctions.dart';
import 'package:up_work_ui/widgets/text_widget.dart';

FlatButton CancelButton(BuildContext context) {
  return FlatButton(
      onPressed: () {
        CommonFunctions.goToHomePage(context);
      },
      child: NormalText("Cancel"));
}

FlatButton MenuButton(BuildContext context, Widget widget, String text) {
  return FlatButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => widget));
      },
      child: Text(text,
          style: TextStyle(
            color: Colors.white,
          )));
}
