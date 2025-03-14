import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/components/custom_button/custom_button.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';

import '../../../components/custom_nav_bar/guest_navbar.dart';
import 'widgets/show_login_bottom.dart';


class GuestServiceScreen extends StatelessWidget {
  const GuestServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 70.w,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               CustomText(
                 text: "Services",
                 fontSize: 32.w,
                 fontWeight: FontWeight.w600,
                 color: AppColors.naviBlue,
                 bottom: 8.h,
               ),
               CustomText(
                 text: "Your booked services will appear here",
                 fontSize: 16.w,
                 fontWeight: FontWeight.w400,
                 color: AppColors.textColor,
               ),
             ],
           ),
            Center(child: CustomImage(imageSrc: AppImages.guest1)),
            Column(
              children: [
                CustomButton(onTap: (){
                  ShowLoginBottomSheet.showLoginBottomSheet(context);
                }, title: "LOGIN",fillColor: AppColors.white,isBorder: true,textColor: AppColors.primary,borderWidth: 1,),
                SizedBox(height: 10.h,),
                CustomButton(onTap: (){}, title: "Create Account",)
              ],
            )

          ],
        ),
      ),
      bottomNavigationBar: GuestNavbar(
        currentIndex: 0,
      ),
    );
  }
}
