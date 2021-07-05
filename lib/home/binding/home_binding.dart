import 'package:get/get.dart';
import 'package:getx_flutter/home/controller/home_controller.dart';
import 'package:getx_flutter/services/api_service.dart';

class HomeBinding extends Bindings {
  void dependencies() {
    Get.put(ApiService());

    Get.put(HomeController());
  }
}
