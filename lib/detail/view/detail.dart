import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/home/controller/home_controller.dart';
import 'package:getx_flutter/services/api_service.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeState = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            //Get.back();
            print(homeState.count);
            //print(apiService.fetchTextFromApi());
          },
        ),
      ),
    );
  }
}
