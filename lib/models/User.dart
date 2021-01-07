import 'dart:ui';

class User {
  String name;
  String surname;
  String gender;
  String targetGender;
  Image photo;
  String password;
  String email;
  DateTime birthDate;
  User();

  @override
  String toString() {
    String res = "";
    if (name != null) {
      res += "Name :" + name + "\n";
    }
    if (surname != null) {
      res += "Surname :" + surname + "\n";
    }
    if (gender != null) {
      res += "Gender :" + gender + "\n";
    }
    if (targetGender != null) {
      res += "TargetGender :" + targetGender + "\n";
    }
    if (password != null) {
      res += "Password: " + password + "\n";
    }
    if (email != null) {
      res += "Email :" + email + "\n";
    }
    if (birthDate != null) {
      res += "BirthDate :" + birthDate.toString() + "\n";
    }
    return res;
  }
}
