import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/components/custom_button/custom_button.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';


class WorkAreasMap extends StatelessWidget {
  const WorkAreasMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Work areas",
        leftIcon: true,
        colors: Colors.black,
        iconColors: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            CustomImage(
              imageSrc: AppImages.mapImage,
              fit: BoxFit.fitWidth,
              width: MediaQuery.sizeOf(context).width,
            ),
           /* Positioned(
                bottom: 40.h,
                right: 20.w,
                left: 20.w,
                child: CustomButton(
                  onTap: () {},
                  title: "Start Service",
                  fillColor: AppColors.servicePrimary,
                ))*/
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
        child: CustomButton(
          onTap: () {},
          title: "Start Service",
          fillColor: AppColors.servicePrimary,
        ),
      ),
    );
  }
}
