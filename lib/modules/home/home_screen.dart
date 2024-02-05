import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ziti_assignment/class/event_class.dart';
import 'package:ziti_assignment/modules/home/widgets/timeline_tile.dart';
import 'package:ziti_assignment/utils/app_constants.dart';
import 'home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    final TextTheme textTheme = Theme.of(context).textTheme;
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: size.height * 0.35,
              flexibleSpace: FlexibleSpaceBar(
                background: FadeIn(
                  duration: const Duration(milliseconds: 1500),
                  child: CachedNetworkImage(
                    width: MediaQuery.of(context).size.width,
                    imageUrl: "https://upload.wikimedia.org/wikipedia/commons/3/31/Pran_Pratishtha_ceremony_of_Shree_Ram_Janmaboomi_Temple_in_Ayodhya%2C_Uttar_Pradesh_on_January_22%2C_2024.jpg",
                    fit: BoxFit.fill,
                    placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(AppConstants.normalPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(text: "Ram Mandir History: A Timeline", style: textTheme.headlineSmall),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: FadeInUpBig(
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.eventsList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    Event event = controller.eventsList[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Card(
                        surfaceTintColor: Colors.white,
                        elevation: 12,
                        child: TimeLineTile(
                          isFirst: index == 0 ? true : false,
                          isLast: index == controller.eventsList.length - 1 ? true : false,
                          title: event.title,
                          description: event.description,
                          image: event.image,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        //),
      ),
    );
  }
}
