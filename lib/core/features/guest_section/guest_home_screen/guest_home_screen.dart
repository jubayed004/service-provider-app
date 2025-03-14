import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/components/custom_button/custom_button.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_royel_appbar/custom_appbar.dart';
import 'package:service_provider_app/core/features/user_section/user_home/inner_widget/custom_circel.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import 'package:service_provider_app/core/utils/app_strings/app_strings.dart';

import '../../../../core/app_routes/app_routes.dart';

import '../../../components/custom_nav_bar/guest_navbar.dart';
import '../../../utils/app_colors/app_colors.dart';


class GuestHomeScreen extends StatelessWidget {
  const GuestHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50.h,
          ),
          CustomAppbar(
            leadingImage: AppImages.logoPng,
            actionImageOne: AppImages.search,
            actionImageTwo: AppImages.notification,
          ),

       Stack(
         children: [
           Container(
             height: 400.h,
             width: MediaQuery.sizeOf(context).width,
             color: Colors.transparent,

           ),
           Positioned(
              top: 130.w,
             left: 130.w,
             right: 130.w,
             bottom: 130.w,
             child: Container(
               decoration: BoxDecoration(
                 color: AppColors.fullWhite,
                 borderRadius: BorderRadius.circular(100),
               ),
               child: Center(
                 child: CustomImage(
                   imageSrc: AppImages.gImage,
                 ),
               ),
             ),
           ),
           Positioned(
             right: 30.w,
             top: 90.h,
             child: GestureDetector(
               onTap: () {
                 Get.toNamed(AppRoutes.bookingTime);
               },
               child: CustomCircel(
                 name: AppStrings.cleaning,
                 image: AppImages.cleanig, onTap: () {  },
               ),
             ),
           ),
           Positioned(
             left: 30.w,
             top: 90.h,
             child: GestureDetector(
               onTap: () {
                 Get.toNamed(AppRoutes.bookingTime);
               },
               child: CustomCircel(
                 name: AppStrings.pets,
                 image: AppImages.pet, onTap: () {  },
               ),
             ),
           ),
           Positioned(
             left: 30.w,
             bottom: 90.h,
             child: GestureDetector(
               onTap: () {
                 Get.toNamed(AppRoutes.bookingTime);
               },
               child: CustomCircel(
                 name: AppStrings.others,
                 image: AppImages.others, onTap: () {  },
               ),
             ),
           ),
           Positioned(
             right: 30.w,
             bottom: 90.h,
             child: GestureDetector(
               onTap: () {
                 Get.toNamed(AppRoutes.careScreen);
               },
               child: CustomCircel(
                 name: AppStrings.care,
                 image: AppImages.care, onTap: () {  },
               ),
             ),
           ),
           Positioned(
             right: 0,
             left: 0,
             top: 20.h,
             child: GestureDetector(
               onTap: () {
                 Get.toNamed(AppRoutes.bookingTime);
               },
               child: CustomCircel(
                 name: AppStrings.home,
                 image: AppImages.userHome, onTap: () {  },
               ),
             ),
           ),
           Positioned(
             right: 0,
             left: 0,
             bottom: 20.h,
             child: GestureDetector(
               onTap: () {
                 Get.toNamed(AppRoutes.bookingTime);
               },
               child: CustomCircel(
                 name: AppStrings.handyman,
                 image: AppImages.handyman, onTap: () {  },
               ),
             ),
           )
         ],
       ),

         SizedBox(height: 50.h,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                CustomButton(
                  onTap: () {},
                  title: "LOGIN",
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomButton(
                  onTap: () {},
                  title: "Create Account",
                  textColor: AppColors.black,
                  isBorder: true,
                  fillColor: AppColors.white,
                  borderWidth: 1,
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: GuestNavbar(
        currentIndex: 2,
      ),
    );
  }
}
