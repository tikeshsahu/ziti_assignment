import 'package:get/get.dart';
import 'package:ziti_assignment/common/network_controller.dart';

class DependencyInjection {
  static void init() {
    Get.put<NetworkController>(NetworkController(), permanent: true);
  }
}