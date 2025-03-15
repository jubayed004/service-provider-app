import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/components/custom_netwrok_image/custom_network_image.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_const/app_const.dart';

import '../../../../../components/custom_royel_appbar/custom_royel_appbar.dart';
import '../../../../../components/custom_text/custom_text.dart';
class MyBookingScreen extends StatelessWidget {
  const MyBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "My Booking",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
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
                children: [
                  CustomNetworkImage(
                    imageUrl: AppConstants.girlsPhoto,
                    height: 80.h,
                    width: 80.w,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  SizedBox(width: 10.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Elderly Care",
                        fontSize: 16.w,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textColor,
                        bottom: 4.h,
                      ),
                      CustomText(
                        text: "Paid on 12/01/2025",
                        fontSize: 12.w,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColor,
                      ),
                      CustomText(
                        text: "Service date:13/01/2025",
                        fontSize: 12.w,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColor,
                      ),
                      CustomText(
                        text: "Cancelled by NM Sujon",
                        fontSize: 12.w,
                        fontWeight: FontWeight.w400,
                        color: AppColors.red,
                      )
                    ],
                  ),
                  Spacer(),
                  CustomText(
                    text: "\$10.00 hrs",
                    fontSize: 12.w,
                    fontWeight: FontWeight.w600,
                    color: AppColors.lightBlue,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
