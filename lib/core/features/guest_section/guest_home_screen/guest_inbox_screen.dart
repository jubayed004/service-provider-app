import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/components/custom_tab_selected/custom_tab_bar.dart';
import 'package:service_provider_app/core/features/guest_section/guest_home_screen/widgets/show_login_bottom.dart';
import 'package:service_provider_app/core/features/service_provider_section/service_home/controller/service_home_controller.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import '../../../components/custom_button/custom_button.dart';
import '../../../components/custom_image/custom_image.dart';
import '../../../components/custom_nav_bar/guest_navbar.dart';
import '../../../components/custom_text/custom_text.dart';


class GuestInboxScreen extends StatefulWidget {
  GuestInboxScreen({super.key});

  @override
  State<GuestInboxScreen> createState() => _GuestInboxScreenState();
}

class _GuestInboxScreenState extends State<GuestInboxScreen> {
  final serviceHomeController = Get.find<ServiceHomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 70),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomText(
            text: "Inbox",
            fontSize: 32.w,
            fontWeight: FontWeight.w600,
            bottom: 9.h,
            color: AppColors.naviBlue,
            right: 15,
          ), // Show text field when search is active
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // if (!requestProController.showSearchField.value) // Hide "Inbox" text when search field is active
              CustomTabBar(
                tabs: serviceHomeController.alertsTypeList,
                selectedIndex: serviceHomeController.currentIndex.value,
                onTabSelected: (value) {
                  serviceHomeController.currentIndex.value = value;
                  setState(() {});
                },
                selectedColor: AppColors.primary,
                unselectedColor: AppColors.black,
              ),
              SizedBox(height: 20.h),
            ],
          ),
          if (serviceHomeController.currentIndex.value == 0)
            Column(
              children: [
                CustomText(
                  top: 50.h,
                  text: "No messages",
                  fontSize: 16.w,
                  fontWeight: FontWeight.w500,
                  color: AppColors.naviBlue,
                  bottom: 10.h,
                ),
                Center(child: CustomImage(imageSrc: AppImages.inboxImage)),
                CustomText(
                  top: 10.h,
                  text: "You don’t have messages\nfrom professionals yet",
                  fontSize: 16.w,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textColor,
                  maxLines: 2,
                  bottom: 30.h,
                ),
                CustomButton(onTap: (){
                  ShowLoginBottomSheet.showLoginBottomSheet(context);
                }, title: "LOGIN",fillColor: AppColors.white,isBorder: true,textColor: AppColors.primary,borderWidth: 1,),
                SizedBox(height: 10.h,),
                CustomButton(onTap: (){}, title: "Create Account",)
              ],
            ),
          if (serviceHomeController.currentIndex.value == 1)
            Column(
              children: [
                CustomText(
                  top: 50.h,
                  text: "No Notification",
                  fontSize: 16.w,
                  fontWeight: FontWeight.w500,
                  bottom: 10.h,
                  color: AppColors.naviBlue,
                ),
                Center(child: CustomImage(imageSrc: AppImages.inboxImage2)),
                CustomText(
                  top: 10.h,
                  text: "You don’t have messages\nfrom professionals yet",
                  fontSize: 16.w,
                  fontWeight: FontWeight.w400,
                  maxLines: 2,
                  color: AppColors.textColor,
                  bottom: 30.h,
                ),
                CustomButton(onTap: (){
                  ShowLoginBottomSheet.showLoginBottomSheet(context);
                }, title: "LOGIN",fillColor: AppColors.white,isBorder: true,textColor: AppColors.primary,borderWidth: 1,),
                SizedBox(height: 10.h,),
                CustomButton(onTap: (){}, title: "Create Account",)
              ],
            )
        ]),
      ),
      bottomNavigationBar: GuestNavbar(
        currentIndex: 3,
      ),
    );
  }
}
