import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/components/custom_elevated_button/custom_elevated_button.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_icons/app_icons.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import 'package:service_provider_app/core/utils/app_strings/app_strings.dart';

class HomeUserScreen extends StatefulWidget {
  const HomeUserScreen({super.key});

  @override
  State<HomeUserScreen> createState() => _HomeUserScreenState();
}

class _HomeUserScreenState extends State<HomeUserScreen> {
  @override
  void initState() {
    super.initState();

    // Delayed execution of bottom sheet
    Future.delayed(const Duration(seconds: 0), () {
      if (mounted) {
        showModalBottomSheetPrivacyPolicy();
      }
    });
  }

  Future<dynamic> showModalBottomSheetPrivacyPolicy() {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.sizeOf(context).height / 2,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: Image.asset(AppImages.privacyPolicy)),
                      SizedBox(height: 44.h),
                      CustomText(
                        text: AppStrings.weValueYourPrivacy,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 12.h),
                      CustomText(
                        text: AppStrings.webelUses,
                        maxLines: 4,
                        textAlign: TextAlign.start,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(height: 12.h),
                      GestureDetector(
                        onTap: () {},
                        child: CustomText(
                          text: AppStrings.privacyPolicy,
                          color: AppColors.appColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: Divider(color: AppColors.appColor),
                      ),
                      SizedBox(height: 24.h),
                      CustomElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        text: AppStrings.accept,
                        color: AppColors.appColor,
                        textColor: AppColors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 34),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  AppImages.iumi_image,
                ),
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(AppImages.search),
                        )),
                    SizedBox(width: 12.w),
                    Container(
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: 6,
                                bottom: 10,
                                child: Container(
                                  height: 16,
                                  width: 16,
                                  decoration: BoxDecoration(
                                      color: AppColors.appColor,
                                      borderRadius: BorderRadius.circular(80)),
                                  child: CustomText(
                                    text: '1',
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Image.asset(AppImages.notification),
                            ],
                          ),
                        )),

                    // Image.asset(AppImages.notification),
                  ],
                ),
              ],
            ),
            // Wrapping the Stack in a Container with a finite height
            Container(
              height: 200, // Set a finite height for the Stack
              child: Stack(
                children: [
                  Positioned(
                    top: 50,
                    left: 50,
                    width: 100.w,
                    height: 100.h,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(50)),
                      // child: Image.asset(AppIcons.profile),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
