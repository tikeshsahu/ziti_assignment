import 'package:get/get.dart';
import 'package:ziti_assignment/modules/audio_player/audio_player_controller.dart';
import 'package:ziti_assignment/modules/audio_player/bhajans_screen.dart';
import 'package:ziti_assignment/modules/home/home_controller.dart';
import 'package:ziti_assignment/modules/home/home_screen.dart';

class LayoutController extends GetxController {
  final bodyPages = [const HomeScreen(), const BhajansScreen()];
  final RxInt _currentIndex = RxInt(0);

  // getter
  int get currentIndex => _currentIndex.value;

  changeIndex(int value) {
    _currentIndex.value = value;
    if (value == 0) {
      Get.delete<AudioPlayerController>();
    } else {
      Get.delete<HomeController>();
    }
    update();
  }
}
