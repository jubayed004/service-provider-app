import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';

class CustomCheckboxText extends StatelessWidget {
  const CustomCheckboxText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0.0),
      child: Row(
        children: [
          Checkbox(value: false, onChanged: (value){},checkColor: AppColors.primary,),
          CustomText(text: "Washing and ironing clothes",fontSize: 16.w,fontWeight: FontWeight.w400,color: AppColors.black,),
        ],
      ),
    );
  }
}
