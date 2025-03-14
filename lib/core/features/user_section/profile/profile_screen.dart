import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_nav_bar/user_navbar.dart';
import 'package:service_provider_app/core/components/custom_netwrok_image/custom_network_image.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import '../../../../core/app_routes/app_routes.dart';
import '../../../components/custom_pop_up/custom_pop_up.dart';
import '../../../utils/app_const/app_const.dart';
import 'widget/custom_profile_list_view.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
                  CustomText(
                    text: "Jubayed islam ",
                    fontSize: 20.w,
                    fontWeight: FontWeight.w600,
                    left: 10.w,
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: AppColors.fullWhite,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.white,
                        // blurRadius: 4.r,
                        // offset: const Offset(8, 8),
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CustomImage(
                          imageSrc: AppImages.profile9,
                        ),
                        CustomText(
                          text: "Switch to Professional version",
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
              CustomProfileListView(image: AppImages.profile,title: "Personal details",onTap: (){Get.toNamed(AppRoutes.personalDetailsScreen);},),
              CustomProfileListView(image: AppImages.profile1,title: "My addresses",onTap: (){Get.toNamed(AppRoutes.myAddressScreen);},),
              CustomProfileListView(image: AppImages.profile2,title: "Payment and Refunds",onTap: (){Get.toNamed(AppRoutes.paymentRefundsScreen);},),
              CustomProfileListView(image: AppImages.profile3,title: "Change Password",onTap: (){Get.toNamed(AppRoutes.changePasswordScreen);},),
              CustomProfileListView(image: AppImages.profile4,title: "Language",onTap: (){Get.toNamed(AppRoutes.changeLanguageScreen);},),
              CustomProfileListView(image: AppImages.profile5,title: "About Us",onTap: (){Get.toNamed(AppRoutes.aboutUsScreen);},),
              CustomProfileListView(image: AppImages.profile6,title: "Terms and Conditions",onTap: (){Get.toNamed(AppRoutes.termsConditionScreen);},),
              CustomProfileListView(image: AppImages.profile7,title: "Privacy policy",onTap: (){Get.toNamed(AppRoutes.privacyPolicyScreen);},),
              CustomProfileListView(image: AppImages.profile8,title: "Log Out",
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      backgroundColor: AppColors.white_50,
                      insetPadding: EdgeInsets.all(8),
                      contentPadding: EdgeInsets.all(8),
                      content: SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        child: CustomShowDialog(
                          textColor: AppColors.black,
                          title: "Logout Account",
                          discription: "Are you sure you want to log out?",
                          showRowButton: true,
                          showCloseButton: true,
                          leftOnTap: (){
                            //Get.toNamed(AppRoutes.loginScreen);
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: UserNavbar(currentIndex: 4),
    );
  }
}
