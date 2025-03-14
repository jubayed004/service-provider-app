import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';


class CustomTab extends StatelessWidget {
  const CustomTab({
    super.key,
    required this.titles,
    this.subTitles,
    this.onTap,
    required this.currentIndex,
    this.selectedColor,
    this.unselectedColor, this.height,
  });

  final List<String> titles;
  final List<String>? subTitles;

  final Function(int index)? onTap;
  final int currentIndex;

  final Color? selectedColor;
  final Color? unselectedColor; 
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:height?? 70.h,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(titles.length, (index) {
          return GestureDetector( 
            onTap: () => onTap!(index),
            child: Container(
              alignment: Alignment.center,
              height:height?? 70.h,
              width: MediaQuery.sizeOf(context).width / 2.3,
              decoration: BoxDecoration(
                  color: currentIndex == index
                      ? selectedColor ?? AppColors.appColor_01
                      : unselectedColor ?? AppColors.white,
                  border: Border.all(
                    color: currentIndex == index
                        ? selectedColor ?? AppColors.appColor
                        : unselectedColor ?? AppColors.white,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.r))),
              child: Column( 
                mainAxisAlignment: MainAxisAlignment.center, 
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: titles[index],
                    fontSize: 16.w,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ), 
                  if(subTitles!=null) 
                  CustomText(
                    text: subTitles![index],
                    fontSize: 12.w,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ), 
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
