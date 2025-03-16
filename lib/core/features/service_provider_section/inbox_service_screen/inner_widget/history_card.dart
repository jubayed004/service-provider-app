import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_netwrok_image/custom_network_image.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_const/app_const.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';

import '../../../../components/custom_text/custom_text.dart';

class HistoryCard extends StatelessWidget {
  final Function()? onTap;

  final String? image;
  final String? name;
  final String? title;
  final String? time;

  const HistoryCard({
    super.key,
    this.onTap,
    this.image,
    this.name,
    this.title,
    this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, right: 10, left: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(10.h),
          decoration: BoxDecoration(
              color: AppColors.fullWhite,
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: AppColors.white)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomNetworkImage(
                    imageUrl: image ?? AppConstants.girlsPhoto,
                    height: 55.h,
                    width: 55.w,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: name ?? "Elderly Care",
                        fontSize: 14.w,
                        fontWeight: FontWeight.w600,
                        color: AppColors.servicePrimary,
                      //  bottom: 6.h,
                      ),

                      Row(
                        children: [
                          CustomImage(
                            imageSrc: AppImages.arrowdown,
                            height: 15.w,
                            width: 15.w,
                          ),
                          CustomText(
                            left: 8.w,
                            text: time ?? "18:30",
                            fontSize: 12.w,
                            fontWeight: FontWeight.w500,
                            color: AppColors.textColor,
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   width: 150.w,
                      //   child:
                      // CustomText(
                      //   //left: 8.w,

                      //   text: title ?? 'We have accepted your order.',
                      //   fontSize: 14.w,
                      //   fontWeight: FontWeight.w400,
                      //   color: AppColors.textColor,
                      //   textAlign: TextAlign.start,
                      //   // maxLines: 3,
                      // ),
                      //  ),
                      SizedBox(
                        height: 4.h,
                      ),
                    ],
                  ),
                ],
              ),

              CustomImage(
                imageSrc: AppImages.videoIcon,
                height: 30.w,
                width: 30.w,
              ),

              // Row(
              //   children: [
              //     Icon(
              //       Icons.access_time_outlined,
              //       size: 15,
              //       color: AppColors.textColor,
              //     ),
              //     CustomText(
              //       left: 8.w,
              //       text: time ?? "18:30",
              //       fontSize: 16.w,
              //       fontWeight: FontWeight.w400,
              //       color: AppColors.textColor,
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
