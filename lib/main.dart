import 'package:flutter/material.dart';
import 'package:up_work_ui/views/home_page.dart';
import 'package:up_work_ui/views/user_register/name_surname.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(243,1,88, 1),
      ),
      home: HomePage(),
    );
  }
}
