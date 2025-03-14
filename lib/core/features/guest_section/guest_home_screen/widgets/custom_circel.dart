import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';


class CustomCircel extends StatelessWidget {
  const CustomCircel({
    super.key,
    required this.name,
    required this.image,
    this.fontSize,
    this.radius,
   // required this.onTap,
  });

  final String name;
  final String image;
  final double? fontSize;
  final double? radius;
  //final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.appWhite,
      radius: radius ?? 45.w,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomImage(
              imageSrc: image,
              height: 30.h,
              width: 30.w,
            ),
            SizedBox(
              height: 3.h,
            ),
            CustomText(
              text: name,
              fontSize: fontSize ?? 10.w,
              fontWeight: FontWeight.w700,
              color: AppColors.black_05,
            ),

          ],
        ),
      ),
    );
  }
}
