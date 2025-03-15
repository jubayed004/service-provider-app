import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_nav_bar/service_navbar.dart';
import 'package:service_provider_app/core/components/custom_netwrok_image/custom_network_image.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_const/app_const.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';

import '../../../../core/app_routes/app_routes.dart';
import 'widget/custom_profile_list_view.dart';

class ServiceProfileScreen extends StatelessWidget {
  const ServiceProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomNetworkImage(
                    imageUrl: AppConstants.girlsPhoto,
                    height: 70.h,
                    width: 70.w,
                    boxShape: BoxShape.circle,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        maxLines: 2,
                        text: "Jubayed islam",
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600,
                        left: 10.w,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          CustomText(
                            text: "Verification :",
                            fontSize: 14.w,
                            fontWeight: FontWeight.w400,
                            left: 10.w,
                          ),
                          CustomText(
                            text: "Not verified",
                            fontSize: 14.w,
                            fontWeight: FontWeight.w400,
                            color: AppColors.lightBlue,
                            left: 10.w,
                            // decoration: TextDecoration.underline,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                    color: AppColors.fullWhite,
                    borderRadius: BorderRadius.circular(10),
                   ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CustomImage(
                          imageSrc: AppImages.service12,
                        ),
                        CustomText(
                          text: "Switch to client version",
                          fontSize: 14.w,
                          fontWeight: FontWeight.w400,
                          left: 10.w,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.textColor,
                      size: 18,
                    )
                  ],
                ),
              ),
              CustomText(
                text: "Account Settings",
                fontSize: 18.w,
                fontWeight: FontWeight.w400,
                color: AppColors.textColor,
                top: 20.h,
                bottom: 20.h,
              ),
              CustomProfileListView(
                image: AppImages.service1,
                title: "Personal details",
                onTap: () {
                  Get.toNamed(AppRoutes.servicePersonalDetailsScreen);
                },
              ),
              CustomProfileListView(
                image: AppImages.service2,
                title: "My balance",
                onTap: () {
                  Get.toNamed(AppRoutes.serviceMyBalanceScreen);
                },
              ),
              CustomProfileListView(
                image: AppImages.service3,
                title: "My listing",
                onTap: () {
                  Get.toNamed(AppRoutes.serviceMyListingScreen);
                },
              ),
              CustomProfileListView(
                image: AppImages.service4,
                title: "Booking preferences",
                onTap: () {
                  Get.toNamed(AppRoutes.servicePreferencesScreen);
                },
              ),
              CustomProfileListView(
                image: AppImages.service5,
                title: "My Review",
                onTap: () {
                  Get.toNamed(AppRoutes.serviceReviewsScreen);
                },
              ),
              CustomProfileListView(
                image: AppImages.service6,
                title: "Change Password",
                onTap: () {
                  Get.toNamed(AppRoutes.serviceChangePasswordScreen);
                },
              ),
              CustomProfileListView(
                image: AppImages.service7,
                title: "Language",
                onTap: () {
                  Get.toNamed(AppRoutes.serviceChangeLanguageScreen);
                },
              ),
              CustomProfileListView(
                image: AppImages.service8,
                title: "About us",
                onTap: () {
                  Get.toNamed(AppRoutes.aboutUsScreen);
                },
              ),
              CustomProfileListView(
                image: AppImages.service9,
                title: "Terms & Conditions",
                onTap: () {
                  Get.toNamed(AppRoutes.termsConditionScreen);
                },
              ),
              CustomProfileListView(
                image: AppImages.service10,
                title: "Privacy Policy",
                onTap: () {
                  Get.toNamed(AppRoutes.privacyPolicyScreen);
                },
              ),
              CustomProfileListView(
                image: AppImages.service11,
                title: "Log Out",
                onTap: () {

                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ServiceNavbar(currentIndex: 4),
    );
  }
}
