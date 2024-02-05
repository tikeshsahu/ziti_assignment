import 'package:get/get.dart';
import 'package:ziti_assignment/modules/audio_player/audio_player_controller.dart';


class AudioPlayerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AudioPlayerController(), fenix: true);
  }
}