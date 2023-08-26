import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_drawer_menu/screens/flutter_updates.dart';
import 'package:sliding_drawer_menu/screens/home.dart';
import 'package:sliding_drawer_menu/screens/projects.dart';

class MainController extends GetxController {
  //indexing of the screens
  var currentScreen = 0.obs;

  textStyle() {
    return TextStyle(fontSize: 16, fontWeight: FontWeight.w600);
  }

  showScreen(int index) {
    switch (index) {
      case 0:
        return Home();
      case 1:
        return Projects();
      case 2:
        return FlutterUpdates();
      default:
        return Home();
    }
  }
}
