import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_elevated_button/custom_elevated_button.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:service_provider_app/core/features/auth/create_account/widgets/choose_catagory_alert_dialog_screen.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import 'package:service_provider_app/core/utils/app_strings/app_strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CreateAccountAlertDialogScreen extends StatelessWidget {
  const CreateAccountAlertDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.white_50,
      insetPadding: EdgeInsets.all(10),
      contentPadding: EdgeInsets.all(10),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: AppStrings.createAccount,
            fontWeight: FontWeight.w600,
            fontSize: 24.sp,
            color: AppColors.loginColor,
          ),
          GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.close)),
        ],
      ),
      content: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height / 2.3,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 12.h,
              ),
              CustomTextField(
                hintText: AppStrings.fullName,
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomTextField(
                hintText: AppStrings.email,
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomTextField(
                hintText: AppStrings.password,
                isPassword: true,
              ),
              SizedBox(
                height: 24.h,
              ),
              CustomElevatedButton(
                onPressed: (){
                  Get.offAllNamed(AppRoutes.homeUserScreen);
                },
                text: AppStrings.createAccount,
                color: AppColors.appColor,
                textColor: AppColors.white,
              ),
              SizedBox(
                height: 12.h,
              ),
              RichText(
                text: TextSpan(
                  text: AppStrings.doYouHave,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                  children: <TextSpan>[
                    TextSpan(
                        text: AppStrings.logIn,
                        style: TextStyle(fontSize: 12.sp, color: Colors.green),
                        recognizer: TapGestureRecognizer()..onTap = () {}),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: AppStrings.byCreatingil,
                    style: TextStyle(fontSize: 12.sp, color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: AppStrings.termsAndCondition,
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                          recognizer: TapGestureRecognizer()..onTap = () {}),
                      TextSpan(
                        text: AppStrings.andConfirm,
                        style: TextStyle(fontSize: 12.sp, color: Colors.black),
                      ),
                      TextSpan(
                        text: AppStrings.privacyPolicy,
                        style: TextStyle(fontSize: 12.sp, color: Colors.green),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Handle privacy policy click
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
