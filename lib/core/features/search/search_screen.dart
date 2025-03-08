import 'package:flutter/material.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_icons/app_icons.dart';
import 'package:service_provider_app/core/utils/app_strings/app_strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white_50,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 56.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              hintText: AppStrings.findTheService,
              prefixIcon: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(Icons.arrow_back, color: AppColors.appColor),
              ),
            ),
            SizedBox(height: 24.h),
            CustomText(
              text: AppStrings.mostPopularIn,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: 100,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 30.h),
                  child: GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoutes.bookingTimeScreen);
                    },
                    child: Row(
                      children: [
                        CustomImage(imageSrc: AppIcons.cleaning),
                        SizedBox(width: 12.w),
                        CustomText(
                          text: AppStrings.cleaning,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}