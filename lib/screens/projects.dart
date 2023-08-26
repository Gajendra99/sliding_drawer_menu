import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Image.network(
        "https://th.bing.com/th/id/OIG.lVXjWwlHyIo4QdjnC1YE",
        width: Get.width,
        height: Get.height,
        fit: BoxFit.cover,
      )),
    );
  }
}
