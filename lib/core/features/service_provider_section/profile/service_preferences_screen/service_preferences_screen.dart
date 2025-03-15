import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import '../widget/custom_profile_list_view.dart';

class ServicePreferencesScreen extends StatelessWidget {
  const ServicePreferencesScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Preferences",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            CustomProfileListView(
              image: AppImages.service13,
              title: "My work areas",
              onTap: () {
                Get.toNamed(AppRoutes.workAreasMap);
              },
            ),
            CustomProfileListView(
              image: AppImages.service14,
              title: "My schedule",
              onTap: () {
                 Get.toNamed(AppRoutes.workScheduleScreen);
              },
            ),
            CustomProfileListView(
              image: AppImages.service15,
              title: "Minimum booking amount",
              onTap: () {
                 Get.toNamed(AppRoutes.minimumPriceScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
