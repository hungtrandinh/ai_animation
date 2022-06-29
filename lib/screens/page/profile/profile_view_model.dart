import 'package:flutter/material.dart';
import 'package:ui_animation/data/user.dart';
import 'package:ui_animation/screens/page/profile/export.dart';

class ProfileVM extends ChangeNotifier {
  MyUser myUser = MyUser.initial();

  ProfileVM() {
    getUser();
  }

  getUser() {
    myUser =
        MyUser(urlHightLight: ["IAGbFq9Kl6o", "E4XZQ8CStnc", "f1IISFFTqRc"]);
    notifyListeners();
  }
}
