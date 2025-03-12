import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/components/custom_elevated_button/custom_elevated_button.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/components/nav_bar/nav_bar.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_icons/app_icons.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import 'package:circle_list/circle_list.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/utils/app_strings/app_strings.dart';
class HomeUserCareScreen extends StatelessWidget {
   HomeUserCareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white_50,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 44.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///======================= AppBar Section ====================///
            Column(
              children: [
                _buildAppBar(),
                SizedBox(height: 16.h),
                ///======================= Care Section ====================///
                 GestureDetector(
                   onTap: ()=>Get.back(),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                     Icon(Icons.arrow_back_ios,color: AppColors.appColor,),
                     CustomText(text: AppStrings.care,fontSize: 24.sp,fontWeight: FontWeight.w600,color: AppColors.appColor,)
                     ],
                   ),
                 ),
                SizedBox(height: 24.h),
                ///======================= Catagory Section ====================///
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     CircleAvatar(
                       backgroundColor: AppColors.white,
                       radius: 50,
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           CustomImage(imageSrc: AppIcons.childen),
                           CustomText(text: AppStrings.children,fontWeight: FontWeight.w400,fontSize: 14.sp
                             ,),
                         ],
                       ),
                     ),
                     SizedBox(width: 16.w,),
                     CircleAvatar(
                       backgroundColor: AppColors.white,
                       radius: 50,
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           CustomImage(imageSrc: AppIcons.old_man),
                           CustomText(text: AppStrings.children,fontWeight: FontWeight.w400,fontSize: 14.sp
                             ,),
                         ],
                       ),
                     ),
                   ],
                 ),
              ],
            ),
            SizedBox(height: 350.h,),
            CustomText(text: AppStrings.tallapoosaCounty,fontSize: 14.sp,fontWeight: FontWeight.w400,color: AppColors.appColor,)

          ],
        ),
      ),
      bottomNavigationBar: BlackDaimonNavbar(currentIndex: 0),
    );
  }

  Widget _buildAppBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AppImages.iumi_image),
          Row(
            children: [
              _buildIconButton(AppImages.search),
              SizedBox(width: 12.w),
              _buildIconButton(AppImages.notification, notificationCount: 1),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton(String icon, {int? notificationCount}) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(8.w),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(icon),
          if (notificationCount != null)
            Positioned(
              left: 6.w,
              bottom: 10.h,
              child: Container(
                height: 14.h,
                width: 14.w,
                decoration: BoxDecoration(
                  color: AppColors.green,
                  borderRadius: BorderRadius.circular(80),
                ),
                child: CustomText(
                  text: '$notificationCount',
                  color: AppColors.white,
                  fontWeight: FontWeight.w600,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      ),
    );
  }

}
