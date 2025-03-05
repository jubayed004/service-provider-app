import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () {
        Get.offAllNamed(AppRoutes.createAccountScreen);
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white_50,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Center(child: Image.asset(AppImages.iumiSplash))

          ],
        ),
      ),
    );
  }
}
