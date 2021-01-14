

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:up_work_ui/views/home_page.dart';

class CommonFunctions{
  static void goToHomePage(BuildContext context){
     Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
    HomePage()), (Route<dynamic> route) => false);
  } 

}
