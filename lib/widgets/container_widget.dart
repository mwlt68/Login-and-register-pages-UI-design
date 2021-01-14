import 'package:flutter/material.dart';
import 'package:up_work_ui/widgets/text_widget.dart';

Container BasicDataInput(List<Widget> widgets) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widgets,
    ),
  );
}

Container RightSideWidget(Widget widget) {
  return Container(
    child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [widget]),
  );
}

Container RightBottomButton(
    String text, Color color, final VoidCallback onPressed,
    {IconData icon = Icons.navigate_next}) {
  return RightSideWidget(
    FlatButton(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
        onPressed: onPressed,
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              NormalText(text, color: color),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Icon(icon, color: color)),
            ],
          ),
        )),
  );
}
