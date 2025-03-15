import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:service_provider_app/core/components/custom_button/custom_button.dart';
import 'package:service_provider_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';


import '../../../../components/custom_text/custom_text.dart';
import 'custom_show_pic.dart';

class CustomShowBottom {
  static void customShowBottom(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: Color(0xffF9FAFC),
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom + 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                text: "Phone number",
                fontSize: 24.w,
                fontWeight: FontWeight.w600,
                color: AppColors.naviBlue,
              ),
              CustomText(
                text: "Let’s verify your phone number. We will send you an SMS with the verification code",
                fontSize: 12.w,
                fontWeight: FontWeight.w400,
                color: AppColors.textColor,
                textAlign: TextAlign.start,
                maxLines: 2,
                bottom: 10.h,
              ),
              CustomTextField(
                hintText: "Enter your phone number",
                fillColor: AppColors.fullWhite,

              ),
              SizedBox(height: 80.h,),
              CustomButton(onTap: (){
                CustomShowPic.customShowPic(context);
              },title: "Verify",fillColor: AppColors.servicePrimary,),
              SizedBox(height: 10.h,),
              Divider(
                thickness: .3,
                color: AppColors.textColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Phone number",
                    fontSize: 14.w,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textColor,
                  ),
                  CustomText(
                    text: "Ok",
                    fontSize: 18.w,
                    fontWeight: FontWeight.w600,
                    color: AppColors.naviBlue,
                  ),
                ],
              )
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
