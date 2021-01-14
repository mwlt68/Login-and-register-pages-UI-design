import 'package:flutter/material.dart';

GestureDetector DatePickerWithGestureDetector(
    Function selectDate, TextEditingController controller) {
  return GestureDetector(
    onTap: () => selectDate(),
    child: AbsorbPointer(
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    ),
  );
}
