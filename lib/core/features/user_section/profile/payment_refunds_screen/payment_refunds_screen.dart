import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:service_provider_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import '../../../../../core/app_routes/app_routes.dart';

import '../widget/custom_profile_list_view.dart';

class PaymentRefundsScreen extends StatelessWidget {
  const PaymentRefundsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Payment & Refunds",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            CustomProfileListView(
              image: AppImages.profile10,
              title: "My booking",
              onTap: () {
                Get.toNamed(AppRoutes.myBookingScreen);
              },
            ),
            CustomProfileListView(
              image: AppImages.profile11,
              title: "Payments methods",
              onTap: () {
                // Get.toNamed(AppRoutes.personalDetailsScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
