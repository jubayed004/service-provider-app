import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_button/custom_button.dart';
import 'package:service_provider_app/core/components/custom_from_card/custom_from_card.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/features/user_section/search_result_screen.dart/palliative_care_screen/inner_widgets/custom_checkbox_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';

import '../../../components/custom_text/custom_text.dart';
class ServicePalliativeCare extends StatelessWidget {
  const ServicePalliativeCare({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    BackButton(
                      color: AppColors.servicePrimary,
                    ),
                    CustomText(
                      text: "Back",
                      color: AppColors.servicePrimary,
                      fontSize: 20.w,
                      fontWeight: FontWeight.w500,
                    )
                  ],
                ),
                GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoutes.professionalFilterScreen);
                  },
                  child: CustomText(
                    text: "Filters",
                    color: AppColors.black,
                    fontSize: 14.w,
                    fontWeight: FontWeight.w600,
                    right: 20,
                  ),
                )
              ],
            ),
            Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Palliative care",
                          fontSize: 24.w,
                          fontWeight: FontWeight.w600,
                        ),
                        Switch(
                          value: true,
                          onChanged: (value) {},
                          activeColor: AppColors.servicePrimary,
                        )
                      ],
                    ),
                    CustomText(
                      text:
                      "Only show professionals specialising in palliative care",
                      fontSize: 16.w,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textColor,
                      maxLines: 2,
                      textAlign: TextAlign.start,
                    ),
                    Divider(thickness: .3,color: AppColors.textColor,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(
                        text:
                        "Other required tasks",
                        fontSize: 20.w,
                        fontWeight: FontWeight.w500,
                        top: 10.h,
                        bottom: 10.h,
                      ),
                    ),
                    Column(
                      children: List.generate(4, (index) {
                        return CustomCheckboxText();
                      }),
                    ),
                    Divider(thickness: .3,color: AppColors.textColor,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(
                        text:
                        "Show specialists in",
                        fontSize: 20.w,
                        fontWeight: FontWeight.w500,
                        top: 10.h,
                        bottom: 10.h,
                      ),
                    ),
                    Column(
                      children: List.generate(4, (index) {
                        return CustomCheckboxText();
                      }),
                    ),
                    Divider(thickness: .3,color: AppColors.textColor,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(text: "Driving licence", fontSize: 18.w,fontWeight: FontWeight.w500,color: AppColors.black,),
                            Switch(value: false, onChanged: (value){})
                          ],
                        ),
                        CustomText(text: "Only show professionals with a driving licence", fontSize: 14.w,fontWeight: FontWeight.w400,color: AppColors.blackText,),
                      ],
                    ),
                    SizedBox(height: 20.h,),
                    Divider(thickness: .3,color: AppColors.textColor,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(text: "Business profiles", fontSize: 18.w,fontWeight: FontWeight.w500,color: AppColors.black,),
                            Switch(value: false, onChanged: (value){})
                          ],
                        ),
                        CustomText(text: "Only profiles that correspond to a validated business or self-employed professional.", fontSize: 14.w,fontWeight: FontWeight.w400,color: AppColors.blackText,),
                      ],
                    ),
                    SizedBox(height: 20.h,),
                    Divider(thickness: .3,color: AppColors.textColor,),
                    SizedBox(height: 10.h,),
                    CustomFormCard(
                        title: "Image",
                        hintText: "browse image",
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: CustomImage(imageSrc: AppImages.addImage),
                        ),
                        controller: TextEditingController()),
                    SizedBox(height: 10.h,),
                    CustomButton(onTap: (){
                      Get.toNamed(AppRoutes.serviceProfilePictureScreen);
                    }, title: "Update",fillColor: AppColors.servicePrimary,),
                    SizedBox(height: 50.h,),
                    
                  ],
                )),

          ],
        ),
      ),
    );
  }
}
