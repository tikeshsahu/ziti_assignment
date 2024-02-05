import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:ziti_assignment/utils/app_constants.dart';

// ignore: must_be_immutable
class TimeLineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final String title;
  final String description;
  final String image;

  const TimeLineTile({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
    required this.isFirst,
    required this.isLast,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.55,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TimelineTile(
            isFirst: isFirst,
            isLast: isLast,
            beforeLineStyle: const LineStyle(
              color: Colors.orange,
            ),
            indicatorStyle: IndicatorStyle(color: Colors.orange, width: size.width * 0.07),
            afterLineStyle: const LineStyle(
              color: Colors.orange,
            ),
            endChild: ExpansionTile(
              initiallyExpanded: true,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: image,
                      placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    title,
                    style: textTheme.titleLarge,
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppConstants.normalPadding),
              ),
              tilePadding: const EdgeInsets.all(6),
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.amber[100]!,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    description,
                    style: textTheme.bodyMedium,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
