import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.white,
      child: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: AppColors.black,
        ),
        onPressed: () {
          Get.back();
        },
      ),
    );
  }
}