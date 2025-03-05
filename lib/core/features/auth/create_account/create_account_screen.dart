import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:service_provider_app/core/components/custom_button/custom_button.dart';
import 'package:service_provider_app/core/components/custom_elevated_button/custom_elevated_button.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_netwrok_image/custom_network_image.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/features/auth/create_account/widgets/choose_catagory_alert_dialog_screen.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_icons/app_icons.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/utils/app_strings/app_strings.dart';
import 'package:get/get.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Center(child: Image.asset(AppImages.umImage,width: 180.w,height: 180.h,)),
            Column(
              children: [
                Center(
                    child: CustomImage(
                  width: 185.w,
                  height: 185.h,
                  imageSrc: AppImages.umImage,
                )),
                SizedBox(
                  height: 40.h,
                ),
                Center(
                    child: CustomImage(
                  imageSrc: AppImages.createdAccountLogo,
                  width: 370.w,
                  height: 280.h,
                )),
              ],
            ),

            Expanded(
              child: Container(
                height: MediaQuery.sizeOf(context).height / 4,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24.sp),
                        topRight: Radius.circular(24.sp))),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CustomButton(
                        onTap: () {
                          showDialog(
                              context: context,
                              barrierDismissible:
                                  false, // Prevent closing by tapping outside
                              builder: (BuildContext context) {
                                return ChooseCatagoryAlertDialogScreen();
                              });
                        },
                        width: double.infinity,
                        title: AppStrings.createAccount,
                        fontSize: 14.sp,
                        fillColor: AppColors.appColor,
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      CustomButton(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            //background color for modal bottom screen
                            backgroundColor: Colors.white,
                            //elevates modal bottom screen
                            elevation: 10,
                            // gives rounded corner to modal bottom screen
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            builder: (BuildContext context) {
                              // UDE : SizedBox instead of Container for whitespaces
                              return SizedBox(
                                height: MediaQuery.sizeOf(context).height / 1,
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            // Title
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                InkWell(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Icon(
                                                      Icons.clear,
                                                      size: 32,
                                                    ))
                                              ],
                                            ),

                                            SizedBox(
                                              height: 6.h,
                                            ),
                                            CustomText(
                                              text: AppStrings.logIn,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 24.sp,
                                              color: AppColors.loginColor,
                                            ),
                                            SizedBox(
                                              height: 24.h,
                                            ),
                                            CustomElevatedButton(
                                              text:
                                                  AppStrings.continuewithApple,
                                              image: AppImages.apple,
                                              color: AppColors.black,
                                              textColor: AppColors.white,
                                            ),
                                            SizedBox(
                                              height: 12.h,
                                            ),
                                            CustomElevatedButton(
                                              text:
                                                  AppStrings.continuewithApple,
                                              image: AppImages.facebook,
                                              color: AppColors.black,
                                              textColor: AppColors.white,
                                            ),
                                            SizedBox(
                                              height: 12.h,
                                            ),
                                            CustomElevatedButton(
                                              text:
                                                  AppStrings.continuewithApple,
                                              image: AppImages.google,
                                              color: AppColors.white,
                                              textColor: AppColors.black,
                                              sideColor: AppColors.black,
                                            ),
                                            SizedBox(
                                              height: 16.h,
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                    child: Divider(
                                                  color: AppColors.neutral_03,
                                                )),
                                                SizedBox(
                                                  width: 4.w,
                                                ),
                                                CustomText(
                                                  text: AppStrings.or,
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                                SizedBox(
                                                  width: 4.w,
                                                ),
                                                Expanded(
                                                    child: Divider(
                                                  color: AppColors.neutral_03,
                                                )),
                                                // CustomText(text: AppStrings.or,fontSize: 12.sp,fontWeight: FontWeight.w400,)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 24.h,
                                            ),
                                            CustomElevatedButton(
                                                text: AppStrings.logInWithEmail,
                                                color: AppColors.white,
                                              textColor: AppColors.black,
                                              sideColor: AppColors.black
                                                ),
                                            SizedBox(
                                              height: 24.h,
                                            ),
                                        RichText(
                                          text: TextSpan(
                                            text: AppStrings.byCreatingil,
                                            style: TextStyle(fontSize: 12.sp, color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: AppStrings.termsAndCondition,
                                                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold, color: Colors.blue),
                                                recognizer: TapGestureRecognizer()..onTap =(){

                                                }
                                              ),
                                              TextSpan(
                                                text: AppStrings.andConfirm,
                                                style: TextStyle(fontSize: 12.sp, color: Colors.black),
                                              ),
                                              TextSpan(
                                                text: AppStrings.privacyPolicy,
                                                style: TextStyle(fontSize: 12.sp, color: Colors.green),
                                                recognizer: TapGestureRecognizer()..onTap = () {
                                                  // Handle privacy policy click
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                            SizedBox(height: 20.h,)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        width: double.infinity,
                        title: AppStrings.logIn,
                        fontSize: 14.sp,
                        fillColor: AppColors.loginColor,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      CustomText(
                        text: AppStrings.continueAsaGuest,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.neutral,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
