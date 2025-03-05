import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:service_provider_app/core/components/custom_elevated_button/custom_elevated_button.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_icons/app_icons.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                      SizedBox(
                        height: 44.h,
                      ),
                      CustomText(
                        text: AppStrings.weValueYourPrivacy,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      CustomText(
                          text: AppStrings.webelUses,
                          maxLines: 4,
                          textAlign: TextAlign.start,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400),
                      SizedBox(
                        height: 12.h,
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: CustomText(
                            text: AppStrings.privacyPolicy,
                            color: AppColors.appColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          )),
                      SizedBox(
                          width: 120,
                          child: Divider(
                            color: AppColors.appColor,
                          )),
                      SizedBox(
                        height: 24.h,
                      ),
                      CustomElevatedButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                          text: AppStrings.accept,
                          color: AppColors.appColor,
                          textColor: AppColors.white)
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(AppImages.umImage,
                    alignment: Alignment.topLeft, width: 150),
                const Spacer(),
                Image.asset(AppImages.search),
                SizedBox(width: 12.w),
                Image.asset(AppImages.notification),
                const SizedBox(width: 28),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
