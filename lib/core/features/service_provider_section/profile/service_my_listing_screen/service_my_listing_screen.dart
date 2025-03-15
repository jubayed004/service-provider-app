import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_pop_up/custom_pop_up.dart';
import 'package:service_provider_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_const/app_const.dart';

import '../../../../components/custom_netwrok_image/custom_network_image.dart';


class ServiceMyListingScreen extends StatelessWidget {
  const ServiceMyListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "My listing",
        leftIcon: true,
        iconColors: AppColors.black,
        colors: AppColors.black,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12.w),
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: AppColors.fullWhite,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomNetworkImage(
                      imageUrl: AppConstants.girlsPhoto,
                      height: 85.w,
                      width: 85.w,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Elderly Care",
                          fontSize: 16.w,
                          fontWeight: FontWeight.w600,
                          bottom: 4.w,
                        ),
                        CustomText(
                          text: "\$10.00 hrs",
                          fontSize: 12.w,
                          fontWeight: FontWeight.w600,
                          color: AppColors.blue,
                          bottom: 4.w,
                        ),
                        CustomText(
                          text: "Client protection Free",
                          fontSize: 12.w,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textColor,
                        ),
                      ],
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          backgroundColor: AppColors.fullWhite,
                          insetPadding: EdgeInsets.all(8),
                          contentPadding: EdgeInsets.all(8),
                          content: SizedBox(
                            width: MediaQuery.sizeOf(context).width,
                            child: CustomShowDialog(
                              textColor: AppColors.black,
                              title: "Delete your listing",
                              discription: "Are you sure you want to Delete",
                              // showRowButton: true,
                              showColumnButton: true,
                              showCloseButton: true,
                              rightTextButton: "No, Don't Delete",
                              leftTextButton: "Yes, Delete",
                              leftOnTap: () {
                                //  Get.toNamed(AppRoutes.loginScreen);
                              },
                            ),
                          ),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.more_vert,
                      color: AppColors.black,
                    ))
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.servicePrimary,
        onPressed: () {
          Get.toNamed(AppRoutes.servicePalliativeCareListing);
        },
        foregroundColor: AppColors.fullWhite,
        child: Icon(Icons.add,size: 40,),
      ),
    );
  }
}
