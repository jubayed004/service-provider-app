import 'package:flutter/material.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_netwrok_image/custom_network_image.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/features/auth/create_account/widgets/create_account_alert_dialog_screen.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_icons/app_icons.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import 'package:service_provider_app/core/utils/app_strings/app_strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseCatagoryAlertDialogScreen extends StatelessWidget {
  const ChooseCatagoryAlertDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.white_50,
      insetPadding: EdgeInsets.all(8),
      contentPadding: EdgeInsets.all(8),
      title: Align(
        alignment:Alignment.topLeft,
          child: GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back))),
      content: SizedBox(
        height: MediaQuery.sizeOf(context).height/2.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            SizedBox(
              height: 12.h,
            ),
            CustomText(
              text: AppStrings.whatWillYouDoOnIBadi,
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 8.h,
            ),
            CustomText(
              maxLines: 6,
              text: AppStrings.thisDecisionIsNotFinal,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
                 width: MediaQuery.sizeOf(context).width,
                height: 100.h,
                child: GestureDetector(
                  onTap: (){
                    showDialog(
                        context: context,
                        barrierDismissible:
                        false, // Prevent closing by tapping outside
                        builder: (BuildContext context) {
                          return CreateAccountAlertDialogScreen();
                        });
                  },
                  child: Card(
                    color: AppColors.neutral_01,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImage(
                              imageSrc: AppImages.bookServiceImage,
                              height: 80.h,
                               fit: BoxFit.fill,),
                          SizedBox(width: 40.w,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText( text: AppStrings.bookAService,
                               fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(height: 4.h,),
                              CustomText( text: AppStrings.iamAClient,
                               fontSize: 8.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                )),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: 100.h,
                child: GestureDetector(
                  onTap: (){
                    showDialog(
                        context: context,
                        barrierDismissible:
                        false, // Prevent closing by tapping outside
                        builder: (BuildContext context) {
                          return CreateAccountAlertDialogScreen();
                        });
                  },
                  child: Card(
                    color: AppColors.neutral_01,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImage(
                            imageSrc: AppImages.offerServiceImage,
                            height: 80.h,
                            fit: BoxFit.fill,),
                          SizedBox(width: 40.w,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText( text: AppStrings.offerServices,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(height: 4.h,),
                              CustomText( text: AppStrings.iamAProfessional,
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
