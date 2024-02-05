import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';

class AudioPlayerController extends GetxController {
  late final AudioPlayer player;
  late final AssetSource path;
  final RxBool _isPlaying = RxBool(false);
  bool get isPlaying => _isPlaying.value;

  Duration _duration = const Duration();
  Duration get duration => _duration;
  Duration _position = const Duration();
  Duration get position => _position;

  final RxString _title = RxString("");
  String get title => _title.value;
  final RxString _artist = RxString("");
  String get artist => _artist.value;
  final RxString _audio = RxString("");
  String get audio => _audio.value;
  final RxString _image = RxString("");
  String get image => _image.value;

  @override
  void onInit() {
    if (Get.arguments["bhajan"] != null) {
      _title.value = Get.arguments["bhajan"].title;
      _artist.value = Get.arguments["bhajan"].artist;
      _audio.value = Get.arguments["bhajan"].audio;
      _image.value = Get.arguments["bhajan"].image;
    }
    initPlayer();
    super.onInit();
  }

  @override
  void onClose() {
    player.stop();
    player.dispose();
    super.onClose();
  }

  Future initPlayer() async {
    player = AudioPlayer();
    path = AssetSource(audio);

    // set a callback for changing duration
    player.onDurationChanged.listen((Duration d) {
      updateChangingDuration(d);
    });

    // set a callback for position change
    player.onPositionChanged.listen((Duration p) {
      updatePositionChanged(p);
    });

    // set a callback for when audio ends
    player.onPlayerComplete.listen((_) {
      updateAudioEnd();
    });
  }

  updateChangingDuration(Duration value) {
    _duration = value;
    update();
  }

  updatePositionChanged(Duration value) {
    _position = value;
    update();
  }

  updateAudioEnd() {
    _position = _duration;
    update();
  }

  Future<void> play() async {
    if (isPlaying) {
      await player.pause();
      _isPlaying.value = false;
    } else {
      await player.play(path);
      _isPlaying.value = true;
    }
    update();
  }
}
