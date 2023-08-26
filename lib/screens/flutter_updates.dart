import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlutterUpdates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Image.network(
        "https://images.unsplash.com/photo-1605721911519-3dfeb3be25e7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YXJ0fGVufDB8fDB8fHww&w=1000&q=80",
        width: Get.width,
        height: Get.height,
        fit: BoxFit.cover,
      )),
    );
  }
}
