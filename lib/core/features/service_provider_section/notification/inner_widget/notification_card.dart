import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import '../../../../components/custom_text/custom_text.dart';

class NotificationCard extends StatelessWidget {
  final Function()? onTap;

  final String? image;
  final String? name;
  final String? time;

  const NotificationCard({
    super.key,
    this.onTap,
    this.image,
    this.name,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.orange,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomImage(
                        imageSrc: AppImages.notificationcard,
                        height: 30.h,
                        width: 30.w,
                        // imageColor: AppColors.orange,
                      ),
                    ),
                  ),
                  // CustomNetworkImage(
                  //   imageUrl: image?? AppConstants.girlsPhoto,
                  //   height: 80.h,
                  //   width: 80.w,
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
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
                        color: AppColors.black,
                        bottom: 6.h,
                      ),
                      SizedBox(
                        width: 200.w,
                        child: CustomText(
                          //left: 8.w,

                          text: time ??
                              'We have accepted your order. Click to view details.',
                          fontSize: 14.w,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textColor,
                          textAlign: TextAlign.start,
                          maxLines: 3,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.access_time_outlined,
                    size: 15,
                    color: AppColors.textColor,
                  ),
                  CustomText(
                    left: 8.w,
                    text: time ?? "18:30",
                    fontSize: 16.w,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
