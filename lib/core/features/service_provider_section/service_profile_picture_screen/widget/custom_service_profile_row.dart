import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import '../../../../components/custom_image/custom_image.dart';
import '../../../../components/custom_text/custom_text.dart';
class CustomServiceProfileRow extends StatelessWidget {
  const CustomServiceProfileRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          CustomImage(imageSrc: AppImages.thikIcon),
          CustomText(text: "Good lighting", fontSize: 14.w,fontWeight: FontWeight.w400,left: 8.w,)
        ],
      ),
    );
  }
}
