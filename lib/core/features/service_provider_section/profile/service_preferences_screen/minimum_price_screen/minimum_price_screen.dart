import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/components/custom_button/custom_button.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';


class MinimumPriceScreen extends StatelessWidget {
  const MinimumPriceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(leftIcon: true,iconColors: Colors.black,),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Minimum Price",
              fontSize: 24.w,
              fontWeight: FontWeight.w600,
              color: AppColors.naviBlue,
              bottom: 8.h,
            ),
            CustomText(
              text:
                  "What is the minimum price a client a client must pay to book your service?   +info",
              fontSize: 12.w,
              fontWeight: FontWeight.w400,
              color: AppColors.textColor,
              maxLines: 2,
              textAlign: TextAlign.start,
              bottom: 50.h,
            ),
            Center(
              child: CustomText(
                text: "Minimum Price",
                fontSize: 16.w,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
                bottom: 30.h,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(
                  text: "15",
                  fontSize: 24.w,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
                CustomImage(imageSrc: AppImages.currencyDollar),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.textColor, width: .5)),
              child: Row(
                children: [
                  CustomImage(imageSrc: AppImages.lightbulb),
                  Flexible(
                    child: CustomText(
                      left: 8.w,
                      text:
                          "This will avoid being booked for a price so low that it’s not worth your time to commute to the ervice",
                      fontSize: 12.w,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textColor,
                      maxLines: 3,
                      textAlign: TextAlign.start,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
        child: CustomButton(onTap: (){}, title: "Save",fillColor: AppColors.servicePrimary,),
      ),
    );
  }
}
