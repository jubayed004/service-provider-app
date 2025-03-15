import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';


class ServiceMyBalanceScreen extends StatelessWidget {
  const ServiceMyBalanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "My Balance",
        leftIcon: true,
        colors: AppColors.black,
        iconColors: AppColors.black,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              CustomText(
                text: "\$20.00",
                fontSize: 32.w,
                fontWeight: FontWeight.w700,
              ),
              CustomText(
                text: "Available balance",
                fontSize: 14.w,
                fontWeight: FontWeight.w400,
                color: AppColors.textColor,
                bottom: 30.h,
              ),
              Divider(thickness: .3,color: AppColors.textColor,),
              SizedBox(height: 20.h,),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: AppColors.fullWhite,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.white_50,
                        blurRadius: 4.r,
                        offset: const Offset(0, 2),
                      ),
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Row(
                     children: [
                       CustomImage(imageSrc: AppImages.dollerIcon),
                       SizedBox(width: 20.w,),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           CustomText(
                             text: "Balance Deposit",
                             fontSize: 16.w,
                             fontWeight: FontWeight.w500,
                             color: AppColors.black,
                             bottom: 2.h,
                           ),
                           CustomText(
                             text: "Md. Tarek",
                             fontSize: 12.w,
                             fontWeight: FontWeight.w400,
                             color: AppColors.textColor,
                             bottom: 2.h,
                           ),
                           CustomText(
                             text: "Elderly care - 15 march 2025",
                             fontSize: 12.w,
                             fontWeight: FontWeight.w400,
                             color: AppColors.textColor,
                           )
                         ],
                       ),
                     ],
                   ),
                    CustomText(text: "+\$20.00",fontSize: 16.w,fontWeight: FontWeight.w500,color: AppColors.servicePrimary,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
