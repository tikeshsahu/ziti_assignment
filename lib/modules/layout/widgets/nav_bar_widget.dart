import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ziti_assignment/modules/layout/layout_controller.dart';
import 'package:ziti_assignment/utils/app_constants.dart';

class CustomizedNavBarWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final int index;

  const CustomizedNavBarWidget({super.key, required this.title, required this.icon, required this.index});

  @override
  Widget build(BuildContext context) {
    final LayoutController layoutController = Get.find();
    final TextTheme textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () => layoutController.changeIndex(index),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black,
            border: Border(
                top: BorderSide(
              color: index == layoutController.currentIndex ? Colors.white : Colors.transparent,
              width: 3,
            ))),
        child: AnimatedContainer(
          curve: Curves.fastOutSlowIn,
          padding: const EdgeInsets.symmetric(vertical: AppConstants.normalPadding),
          duration: const Duration(milliseconds: 500),
          child: Column(
            children: [
              Obx(() => Icon(
                    icon,
                    color: index != layoutController.currentIndex ? Colors.grey : Colors.white,
                  )),
              const SizedBox(height: 2),
              Obx(() => Text(
                    title.toUpperCase(),
                    style: textTheme.bodySmall?.copyWith(fontSize: 10, fontWeight: index != layoutController.currentIndex ? FontWeight.normal : FontWeight.bold, color: index != layoutController.currentIndex ? Colors.grey : Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
