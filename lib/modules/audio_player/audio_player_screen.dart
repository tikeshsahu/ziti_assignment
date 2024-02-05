import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ziti_assignment/modules/audio_player/audio_player_controller.dart';
import 'package:ziti_assignment/utils/app_constants.dart';

class AudioPlayerScreen extends StatelessWidget {
  const AudioPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AudioPlayerController controller = Get.put(AudioPlayerController());
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.normalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: controller.image,
                placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            const SizedBox(height: AppConstants.normalPadding),
            Text(
              controller.title,
              style: const TextStyle(fontSize: 25),
            ),
            const SizedBox(height: AppConstants.normalPadding),
            Text(
              controller.artist,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: AppConstants.normalPadding * 2),
            Obx(
              () => Column(
                children: [
                  Slider(
                    value: controller.position.inSeconds.toDouble(),
                    onChanged: (value) async {
                      await controller.player.seek(Duration(seconds: value.toInt()));
                      controller.update();
                    },
                    min: 0,
                    max: controller.duration.inSeconds.toDouble(),
                    inactiveColor: Colors.grey,
                    activeColor: Colors.red,
                  ),
                  const SizedBox(height: AppConstants.normalPadding * 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          controller.player.seek(Duration(seconds: controller.position.inSeconds - 10));
                        },
                        child: SizedBox(height: size.height * 0.05, child: Image.asset('assets/images/rewind.png')),
                      ),
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: controller.play,
                        child: Icon(
                          controller.isPlaying ? Icons.pause_circle : Icons.play_circle,
                          color: Colors.red,
                          size: size.height * 0.1,
                        ),
                      ),
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          controller.player.seek(Duration(seconds: controller.position.inSeconds + 10));
                        },
                        child: SizedBox(height: size.height * 0.05, child: Image.asset('assets/images/forward.png')),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
