import 'package:flutter/material.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_strings/app_strings.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BookingTimeScreen extends StatelessWidget {
  const BookingTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.appColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.appColor,
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text: AppStrings.whenDoYou,fontSize: 24.sp,fontWeight: FontWeight.w600,bottom: 20,left: 20,),
            Container(
               height: MediaQuery.of(context).size.height/1,
              decoration: BoxDecoration(
                  color: AppColors.white_50,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))

              ),

            )
          ],
        ),
      ),

    );
  }
}
