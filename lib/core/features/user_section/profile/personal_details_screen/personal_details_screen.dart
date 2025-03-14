import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/components/custom_button/custom_button.dart';
import 'package:service_provider_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_const/app_const.dart';

import '../../../../components/custom_netwrok_image/custom_network_image.dart';
import '../controller/profile_controller.dart';

class PersonalDetailsScreen extends StatelessWidget {
  PersonalDetailsScreen({super.key});

  final profileController = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Personal Details",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Stack(
                children: [
                  Obx(() {
                    // Check if an image is selected, if not use the default profile image
                    if (profileController.selectedImage.value != null) {
                      return Container(
                        height: 120.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: FileImage(
                                profileController.selectedImage.value!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    } else {
                      return CustomNetworkImage(
                        imageUrl: AppConstants.girlsPhoto,
                        height: 120.h,
                        width: 120.w,
                        boxShape: BoxShape.circle,
                      );
                    }
                  }),
                  Positioned(
                    bottom: 5,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        profileController.pickImageFromGallery();
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.camera_alt,
                          size: 18,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomTextField(
              hintText: "Your Name",
              fillColor: AppColors.fullWhite,
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomTextField(
              hintText: "Your Phone Number",
              fillColor: AppColors.fullWhite,
            ),
            SizedBox(
              height: 30.h,
            ),
            CustomButton(
              onTap: () {},
              title: "Save",
            ),
            SizedBox(
              height: 30.h,
            ),
            TextButton(
                onPressed: () {},
                child: CustomText(
                  text: "Delete Account permanently",
                  color: AppColors.textColor,
                  fontSize: 16.w,
                ))
          ],
        ),
      ),
    );
  }
}
