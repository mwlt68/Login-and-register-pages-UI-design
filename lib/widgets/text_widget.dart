import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef String Validator(String value);

Text HeaderText(String data) {
  return Text(
    data,
    style: TextStyle(
      color: Colors.white,
      fontSize: 32,
    ),
  );
}

Text NormalText(String data,
    {Color color = Colors.white, double fontSize = 16}) {
  return Text(data,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
      ));
}
Text SlimText(String data,
    {Color color = Colors.white, double fontSize = 14}) {
  return Text(data,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
      ));
}

TextFormField NormalTextFormField(TextEditingController controller,
    {bool obscureText = false, Validator validator}) {
  return TextFormField(
    obscureText: obscureText,
    validator: validator,
    controller: controller,
    showCursor: false,
    decoration: InputDecoration(
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
    ),
  );
}

RichText ErrorRichText(String content,
    {String header = "Error",
    Color headerColor = Colors.red,
    Color contentColor = Colors.black}) {
  return RichText(
    text: TextSpan(
      // Note: Styles for TextSpans must be explicitly defined.
      // Child text spans will inherit styles from parent
      style: TextStyle(
        fontSize: 16.0,
        color: Colors.black,
      ),
      children: <InlineSpan>[
        TextSpan(text: header, style: TextStyle(color: headerColor)),
        WidgetSpan(
            child: Container(
                margin: EdgeInsets.only(left: 7),
                child: Text(content, style: TextStyle(color: contentColor)))),
      ],
    ),
  );
}

