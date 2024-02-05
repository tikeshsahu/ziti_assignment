

import 'package:get/get.dart';
import 'package:ziti_assignment/modules/layout/layout_controller.dart';

class LayoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LayoutController(), fenix: true);
  }
}