import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_button/custom_button.dart';
import 'package:service_provider_app/core/components/custom_pin_code/custom_pin_code.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';

class CustomShowPic {
  static void customShowPic(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: AppColors.black_09,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom + 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Close Button
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              /*   Align(
                alignment: Alignment.topLeft,
                child: CustomText(text: "Phone number", fontSize: 24.w,fontWeight: FontWeight.w600,color: AppColors.naviBlue,)
              ),*/
              CustomText(
                text: "Enter 4 digits code",
                fontSize: 24.w,
                fontWeight: FontWeight.w600,
                color: AppColors.naviBlue,
              ),
              CustomText(
                text: "Enter the 4 digits code that you received on you phone number",
                fontSize: 12.w,
                fontWeight: FontWeight.w400,
                color: AppColors.textColor,
                textAlign: TextAlign.start,
                maxLines: 2,
                bottom: 30.h,
              ),
              CustomPinCode(controller: TextEditingController()),
              SizedBox(height: 50.h,),
              CustomButton(onTap: (){
                 Get.toNamed(AppRoutes.serviceHomeScreen);
              },title: "Done",fillColor: AppColors.servicePrimary,),
              SizedBox(height: 20.h,),
            ],
          ),
        );
      },
    );
  }

  static Widget buildLoginButton(
      {IconData? icon,
        String? customIcon,
        required String text,
        required Color color,
        required Color textColor,
        Color? borderColor,
        final VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: borderColor ?? color),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(icon, color: textColor, size: 22),
              SizedBox(width: 10),
            ] else if (customIcon != null) ...[
              SvgPicture.asset(customIcon,
                  height: 22, width: 22), // Google SVG icon
              SizedBox(width: 10),
            ],
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
