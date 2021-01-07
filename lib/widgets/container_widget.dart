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

Container RightBottomButton(String text,Color color,final VoidCallback onPressed,{IconData icon=Icons.navigate_next} ) {
  return Container(
    child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FlatButton(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              onPressed: onPressed,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  NormalText(text, color: color),
                  Icon(icon, color: color),
                ],
              )),
        ]),
  );
}
