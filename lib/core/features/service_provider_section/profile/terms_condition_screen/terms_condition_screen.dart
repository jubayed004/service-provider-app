import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import '../../../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../../components/custom_text/custom_text.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Terms & Conditions",
        leftIcon: true,
        colors: Colors.black,
        iconColors: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.fullWhite,
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 14,vertical: 16),
            child: Column(
              children: [
                CustomText(
                  text:
                      "1.1        Welcome to Gen sense salon. Gen sense provides access to the mobile application/app  to you subject to the terms and conditions (“Terms”) set out on this page. By using the Website, you, a registered or guest user in terms of the eligibility criteria set out herein (“User”) agree to be bound by the Terms. Please read them carefully as your continued usage of the Website, you signify your agreement to be bound by these Terms. If you do not want to be bound by the Terms, you must not subscribe to or use the Website or our services. ",
                  maxLines: 10,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 16.h,
                ),
                CustomText(
                  text:
                      "1.2        Welcome to Gen sense salon. Gen sense provides access to the mobile application/app  to you subject to the terms and conditions (“Terms”) set out on this page. By using the Website, you, a registered or guest user in terms of the eligibility criteria set out herein (“User”) agree to be bound by the Terms. Please read them carefully as your continued usage of the Website, you signify your agreement to be bound by these Terms. If you do not want to be bound by the Terms, you must not subscribe to or use the Website or our services. ",
                  maxLines: 10,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 16.h,
                ),
                CustomText(
                  text:
                      "1.3        Welcome to Gen sense salon. Gen sense provides access to the mobile application/app  to you subject to the terms and conditions (“Terms”) set out on this page. By using the Website, you, a registered or guest user in terms of the eligibility criteria set out herein (“User”) agree to be bound by the Terms. Please read them carefully as your continued usage of the Website, you signify your agreement to be bound by these Terms. If you do not want to be bound by the Terms, you must not subscribe to or use the Website or our services. ",
                  maxLines: 10,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.start,
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
