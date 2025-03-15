import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_const/app_const.dart';

import '../../../../../components/custom_netwrok_image/custom_network_image.dart';
import '../../../../../components/custom_text/custom_text.dart';
class CustomReviewContainer extends StatelessWidget {
  final String? name;
  final String? title;
  final String? image;
  const CustomReviewContainer({super.key, this.name, this.title, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          CustomNetworkImage(
            imageUrl: image ?? AppConstants.girlsPhoto,
            height: 60.h,
            width: 60.w,
            boxShape: BoxShape.circle,
          ),
          SizedBox(width: 8.w,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: name?? "Mr. Raju",
                  fontSize: 16.w,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                  bottom: 4.h,
                ),
                Row(
                  children: List.generate(5, (value) {
                    return Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 20,
                    );
                  }),
                ),
                CustomText(
                  top: 6.h,
                  text:
                  title ??"Excellent service! Professional, reliable, and exceeded my expectations. Highly recommended!",
                  fontSize: 12.w,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textColor,
                  maxLines: 5,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
