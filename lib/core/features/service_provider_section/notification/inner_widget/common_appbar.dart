import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:service_provider_app/core/components/custom_text/custom_text.dart';

class CommonAppbar extends StatelessWidget {
  const CommonAppbar({super.key, required this.title}); 

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText(
          text: title,
          fontSize: 32.w,
          fontWeight: FontWeight.w600,
          bottom: 9.h,
          right: 15,
        ),
      ],
    );
  }
}
