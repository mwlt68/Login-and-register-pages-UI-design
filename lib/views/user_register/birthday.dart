import 'package:flutter/material.dart';
import 'package:up_work_ui/common/final_datas.dart';
import 'package:up_work_ui/models/User.dart';
import 'package:up_work_ui/views/user_register/gender.dart';
import 'package:up_work_ui/widgets/button_widget.dart';
import 'package:up_work_ui/widgets/container_widget.dart';
import 'package:up_work_ui/widgets/other_widget.dart';
import 'package:up_work_ui/widgets/text_widget.dart';
import 'package:intl/intl.dart';

class BirthdayPage extends StatefulWidget {
  User user;
  BirthdayPage({Key key, @required this.user}) : super(key: key);

  @override
  _BirthdayPageState createState() => _BirthdayPageState();
}

class _BirthdayPageState extends State<BirthdayPage> {
  DateTime _selectedDate = DateTime.now();
  final DateFormat formatter = DateFormat.yMMMMd();

  TextEditingController _birthdayTextEditingController =
      new TextEditingController();

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
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Form(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderText(DefaultTexts.BirtdayHeader),
                  NormalText(DefaultTexts.BirtdayContent),
                  BasicDataInput([
                    NormalText(DefaultTexts.Birtday),
                    DatePickerWithGestureDetector(
                        _selectDate, _birthdayTextEditingController),
                  ]),
                  RightBottomButton("Next", themeColor, () {_nextGenderPage(_selectedDate);}),
                ],
              )),
            )),
      ),
    );
  }

  Future<Null> _selectDate() async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now().subtract(Duration(days: 3650)),
      firstDate: DateTime(1901, 1),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
        _birthdayTextEditingController.value =
            TextEditingValue(text: formatter.format(picked));
      });
  }

  _nextGenderPage(DateTime birthday){
    if(DateTime.now().difference(birthday).inDays > ( 365 * 18 ) ){
      return ;
    }
    widget.user.birthDate=birthday;
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => GenderPage(user:widget.user)));
  }
}
