import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_button/custom_button.dart';
import 'package:service_provider_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';


class MyAddressScreen extends StatelessWidget {
  const MyAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "My Address",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Your Address",
              fontSize: 12.w,
              fontWeight: FontWeight.w400,
              color: AppColors.textColor,
              bottom: 20.h,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, top: 8, bottom: 20),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Mr. Raju Home",
                        fontSize: 16.w,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            color: AppColors.black,
                          ))
                    ],
                  ),
                  CustomText(
                    text: "3891 Parker Rd. Allentown, New Mexico 31134",
                    fontSize: 12.w,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textColor,
                    bottom: 4.h,
                  ),
                  CustomText(
                    text: "(907) 555-0101",
                    fontSize: 12.w,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textColor,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
        child: CustomButton(onTap: (){
          Get.toNamed(AppRoutes.addAddressScreen);
        }, title: "Add New Address",),
      ),
    );
  }
}
