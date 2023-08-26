import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_drawer_menu/main_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MainController controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Code By Chance')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Code By Chance',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              title: Text(
                'Home',
                style: controller.textStyle(),
              ),
              onTap: () {
                Navigator.pop(context);
                controller.currentScreen.value = 0;
              },
            ),
            ListTile(
              title: Text(
                'Projects',
                style: controller.textStyle(),
              ),
              onTap: () {
                Navigator.pop(context);
                controller.currentScreen.value = 1;
              },
            ),
            ListTile(
              title: Text(
                'Flutter Updates',
                style: controller.textStyle(),
              ),
              onTap: () {
                Navigator.pop(context);
                controller.currentScreen.value = 2;
              },
            ),
          ],
        ),
      ),
      body: Obx(() => controller.showScreen(controller.currentScreen.value)),
    );
  }
}
