import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';

import '../../../../components/custom_royel_appbar/custom_royel_appbar.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "About Us",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          // padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColors.fullWhite,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                CustomText(
                  text:
                  "gravida elit enim. lobortis, ex orci lobortis, Donec orci elit felis, luctus ultrices odio tincidunt cursus elit ex nisi vehicula, Morbi Nunc Morbi venenatis sollicitudin. tortor. dui non quam dui. nibh tortor. sit viverra maximus ipsum ",
                  fontSize: 16.w,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                  maxLines: 10,
                  textAlign: TextAlign.start,
                  bottom: 20.h,
                ),
                CustomText(
                  text:
                  "gravida elit enim. lobortis, ex orci lobortis, Donec orci elit felis, luctus ultrices odio tincidunt cursus elit ex nisi vehicula, Morbi Nunc Morbi venenatis sollicitudin. tortor. dui non quam dui. nibh tortor. sit viverra maximus ipsum ",
                  fontSize: 16.w,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                  maxLines: 10,
                  textAlign: TextAlign.start,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
