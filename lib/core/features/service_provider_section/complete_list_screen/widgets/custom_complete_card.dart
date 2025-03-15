import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_const/app_const.dart';

import '../../../../components/custom_netwrok_image/custom_network_image.dart';
import '../../../../components/custom_text/custom_text.dart';
class CustomCompleteCard extends StatelessWidget {
  final Function()? onTap;
  final bool showRowButton;
  final bool singleButton;
  final bool showPrice;
  final String? image;
  final String? name;
  final String? time;
  final String? date;
  final String? buttonName;
  final String? leftButtonName;
  final String? rightButtonName;
  final Color? backClr;
  final Color? backTextClr;
  final Color? leftButtonClr;
  final Color? rightButtonClr;
  final Color? leftButtonTextClr;
  final Color? rightButtonTextClr;
  const CustomCompleteCard({super.key, this.onTap, this.showRowButton=false, this.singleButton=false, this.image, this.name, this.time, this.date, this.buttonName, this.backClr, this.backTextClr, this.showPrice=true, this.leftButtonName, this.rightButtonName, this.leftButtonClr, this.rightButtonClr, this.leftButtonTextClr, this.rightButtonTextClr});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, right: 0, left: 0),
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
                  CustomNetworkImage(
                    imageUrl: image?? AppConstants.girlsPhoto,
                    height: 80.h,
                    width: 80.w,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: name ??"Elderly Care",
                        fontSize: 14.w,
                        fontWeight: FontWeight.w600,
                        color: AppColors.servicePrimary,
                        bottom: 6.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_outlined,
                            size: 15,
                           // color: AppColors.black_03,
                          ),
                          CustomText(
                            left: 8.w,
                            text: time?? "From 16:30 to 18:30",
                            fontSize: 10.w,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today_outlined,
                            size: 15,
                            //color: AppColors.black,
                          ),
                          CustomText(
                            left: 8.w,
                            text: date?? "From 16:30 to 18:30",
                            fontSize: 10.w,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                     singleButton? Container(
                       padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                          color: backClr ?? AppColors.lightGreback,
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        child: CustomText(
                          text:buttonName?? "Ongoing",
                          fontSize: 12.w,
                          fontWeight: FontWeight.w600,
                          color: backTextClr?? AppColors.lightGre,
                        ),
                      ): SizedBox(),
                    showRowButton?  Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                              color: leftButtonClr ?? AppColors.lightGreback,
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: CustomText(
                              text: leftButtonName??"Accept",
                              fontSize: 12.w,
                              fontWeight: FontWeight.w600,
                              color: leftButtonTextClr ?? AppColors.lightGre,
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                              color: rightButtonClr ?? AppColors.lightRed,
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: CustomText(
                              text: rightButtonName ?? "Cancel",
                              fontSize: 12.w,
                              fontWeight: FontWeight.w600,
                              color: rightButtonTextClr ?? AppColors.red,
                            ),
                          )
                        ],
                      )
                    : SizedBox()],
                  ),
                ],
              ),
             showPrice ? CustomText(
                text: "\$40.00",
                fontSize: 14.w,
                fontWeight: FontWeight.w400,
                color: AppColors.servicePrimary,
              ): SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
