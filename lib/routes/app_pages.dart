import 'package:get/get.dart';
import 'package:ziti_assignment/common/splash_screen.dart';
import 'package:ziti_assignment/modules/audio_player/audio_player_binding.dart';
import 'package:ziti_assignment/modules/audio_player/audio_player_screen.dart';
import 'package:ziti_assignment/modules/audio_player/bhajans_screen.dart';
import 'package:ziti_assignment/modules/home/home_binding.dart';
import 'package:ziti_assignment/modules/home/home_screen.dart';
import 'package:ziti_assignment/modules/layout/layout_binding.dart';
import 'package:ziti_assignment/modules/layout/layout_screen.dart';
import 'package:ziti_assignment/routes/app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.layoutRoute,
      page: () => const LayoutScreen(),
      bindings: [
        LayoutBinding(),
        HomeBinding(),
        AudioPlayerBinding(),
      ],
    ),
    GetPage(name: AppRoutes.homeRoute, page: () => const HomeScreen(), binding: HomeBinding()),
    GetPage(
      name: AppRoutes.splashRoute,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: AppRoutes.bhajansRoute,
      page: () => const BhajansScreen(),
    ),
    GetPage(
      name: AppRoutes.audioPlayerRoute,
      page: () => const AudioPlayerScreen(),
      binding: AudioPlayerBinding(),
    ),
    
  ];
}
