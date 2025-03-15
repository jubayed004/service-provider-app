import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/components/custom_button/custom_button.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_netwrok_image/custom_network_image.dart';
import 'package:service_provider_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_const/app_const.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';

import 'widget/custom_service_profile_row.dart';
import 'widget/custom_show_bottom.dart';

class ServiceProfilePictureScreen extends StatelessWidget {
  const ServiceProfilePictureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Profile Picture",
              fontSize: 24.w,
              fontWeight: FontWeight.w600,
              bottom: 6.h,
            ),
            CustomText(
              text:
                  "This will be the picture that clients will see of you. Try to make it as trustworthy as possible.",
              fontSize: 14.w,
              fontWeight: FontWeight.w400,
              maxLines: 2,
              textAlign: TextAlign.start,
              color: AppColors.blackText,
              bottom: 20.h,
            ),
            Center(
              child: Container(
                height: 150.h,
                width: 150.w,
                decoration: BoxDecoration(
                  color: Color(0xffF1F8FE),
                  border: Border.all(color: AppColors.white, width: 2),
                  borderRadius: BorderRadius.circular(90)
                ),child: Icon(Icons.add,size: 40,color: AppColors.blue,),
              ),
            ),
            SizedBox(height: 20.h,),
            Container(
              padding: EdgeInsets.all(15),
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: AppColors.fullWhite,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.black,width: .2)
              ),child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 CustomText(text: "What makes a good profile picture?", fontSize: 14.w,fontWeight: FontWeight.w500,bottom: 10.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 80.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              border: Border.all(color: AppColors.black, width: .2),
                              borderRadius: BorderRadius.circular(90)
                          ),child: CustomNetworkImage(imageUrl: AppConstants.girlsPhoto, height: 80.h, width: 80.w, boxShape: BoxShape.circle,),
                        ),
                        Positioned(
                          bottom: 0,
                            right: 0,
                            child: CustomImage(imageSrc: AppImages.thikIcon))
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 80.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              border: Border.all(color: AppColors.black, width: .2),
                              borderRadius: BorderRadius.circular(90)
                          ),child: CustomNetworkImage(imageUrl: AppConstants.girlsPhoto, height: 80.h, width: 80.w, boxShape: BoxShape.circle,),
                        ),
                        Positioned(
                          bottom: 0,
                            right: 0,
                            child: CustomImage(imageSrc: AppImages.crossIcon))
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15.h,),
                CustomServiceProfileRow(),
                CustomServiceProfileRow(),
                CustomServiceProfileRow(),
                
              ],
            ),
            ),
            SizedBox(height: 30.h,),
            CustomButton(onTap: (){
              CustomShowBottom.customShowBottom(context);
             // Get.toNamed(AppRoutes.serviceHomeScreen);
            }, title: "Confirm",fillColor: AppColors.servicePrimary,)
          ],
        ),
      ),
    );
  }
}
