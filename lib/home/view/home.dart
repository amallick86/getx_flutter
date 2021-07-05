import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:getx_flutter/home/controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeState = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "${homeState.count}",
                  style: TextStyle(fontSize: 24),
                )),
            FlatButton(
              onPressed: () {
                homeState.increment();
                //Get.toNamed("/detail");
                //print(apiService.fetchTextFromApi());
              },
              child: Text("increment"),
              color: Colors.black,
              textColor: Colors.white,
            ),
            FlatButton(
              onPressed: () {
                //homeState.increment();
                //Get.toNamed("/detail");
                //Get.defaultDialog(title: "this is dialog");
                Get.snackbar("title", "this is getx snack bar",
                    snackPosition: SnackPosition.BOTTOM);
                //print(apiService.fetchTextFromApi());
              },
              child: Text("Go to detil"),
              color: Colors.black,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
