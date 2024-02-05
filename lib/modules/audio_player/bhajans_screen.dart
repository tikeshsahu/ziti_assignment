import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ziti_assignment/class/bhajan_class.dart';
import 'package:ziti_assignment/routes/app_routes.dart';
import 'package:ziti_assignment/utils/app_constants.dart';
import 'package:ziti_assignment/utils/app_data.dart';

class BhajansScreen extends StatefulWidget {
  const BhajansScreen({super.key});

  @override
  State<BhajansScreen> createState() => _BhajansScreenState();
}

class _BhajansScreenState extends State<BhajansScreen> {
  List<Bhajan> bhajans = allBhajans;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bhajans'),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(AppConstants.normalPadding),
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: bhajans.length,
                itemBuilder: (context, index) {
                  Bhajan bhajan = bhajans[index];
                  return GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.audioPlayerRoute, arguments: {'bhajan': bhajan});
                      },
                      child: Card(
                        elevation: 3,
                        child: ListTile(
                          title: Text(
                            bhajan.title,
                            style: textTheme.titleMedium,
                          ),
                          leading: Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: CachedNetworkImage(
                              imageUrl: bhajan.image,
                              width: size.width * 0.2,
                              fit: BoxFit.cover,
                              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                              errorWidget: (context, url, error) => const Icon(Icons.error),
                            ),
                          ),
                          subtitle: Text(
                            bhajan.artist,
                            style: textTheme.bodySmall,
                          ),
                        ),
                      ));
                },
                separatorBuilder: (context, index) => const SizedBox(height: 10),
              ),
            )
          ],
        ))));
  }
}
