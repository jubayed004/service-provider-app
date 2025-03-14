import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import '../../../../components/custom_image/custom_image.dart';
import '../../../../components/custom_text/custom_text.dart';
class CustomProfileListView extends StatelessWidget {
  final String? image;
  final String? title;
  final Function()? onTap;
  const CustomProfileListView({super.key, this.image, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.black_09,
                  borderRadius: BorderRadius.circular(10),
                 border: Border.all(color: AppColors.black_09)
              ),child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomImage(imageSrc: image ?? AppImages.profile9,height: 30.w,width: 30.w,),
                    CustomText(text: title ?? "",fontSize: 14.w,fontWeight: FontWeight.w400,left: 10.w,),
                  ],
                ),
                Icon(Icons.arrow_forward_ios,color: AppColors.textColor,size: 18,)
              ],
            ),
            ),
          ),
          Divider(thickness: .3,color: AppColors.textColor,)
        ],
      ),
    );
  }
}
