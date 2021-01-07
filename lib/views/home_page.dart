import 'package:flutter/material.dart';
import 'package:up_work_ui/models/User.dart';
import 'package:up_work_ui/views/user_register/name_surname.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            FlatButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NameSurname(user: new User())));
            }, child: Text("User Register"))
          ],
        ),
      ),
    );
  }
}