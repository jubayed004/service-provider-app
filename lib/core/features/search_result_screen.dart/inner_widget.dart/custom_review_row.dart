import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utils/app_colors/app_colors.dart';
import '../../../../../components/custom_text/custom_text.dart';
class CustomReviewRow extends StatelessWidget {
  const CustomReviewRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: "Service",
            fontSize: 16.w,
            fontWeight: FontWeight.w400,
            color: AppColors.black,
          ),
          Container(
            height: 10,
            width: 200,
            color: Colors.amber,
          ),
          CustomText(
            text: "5.0",
            fontSize: 16.w,
            fontWeight: FontWeight.w400,
            color: AppColors.black,
          ),
        ],
      ),
    );
  }
}
